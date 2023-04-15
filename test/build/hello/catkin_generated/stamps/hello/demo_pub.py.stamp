#! /usr/bin/env python

import os
import sys

import rospy
from std_msgs.msg import String 
#    设置临时环境变量
#   路径写死影响代码的可移植性
# sys.path.insert(0,"/home/xiang/test/src/hello/scripts")
#优化：可以动态获取路径
path = os.path.abspath(".")
sys.path.insert(0,path+"/src/hello/scripts")

import tools

"""
    Python 版本的 HelloVScode，执行在控制台输出 Hello VScode
    实现:
    1.导包
    2.初始化 ROS 节点
    3.chuanjianfabuzheduixiang
    4.bianxie fabuzhe shuju 
"""


if __name__ == "__main__":

   rospy.init_node("name")
   """
        原因：rosrun执行时，参考的路径是工作空间的路径，在工作空间下无法查找依赖的模块
        解决：可以声明python的环境变量，当依赖某个模块时，先去制定的环境变量中查找依赖
   """
#    path = os.path.abspath(".")
#    rospy.loginfo("执行是参考的路径:%s",path)
   rospy.loginfo("num:%d",tools.num)

   pub =rospy.Publisher("che",String,queue_size=10)

   msg=String()

   rate=rospy.Rate(2)

   count=0

   rospy.sleep(5)

   while not rospy.is_shutdown():

       count+=1

       msg.data= "hello" + str(count)

       pub.publish(msg)

       rospy.loginfo(msg.data)

       rate.sleep()