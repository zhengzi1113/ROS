#! /usr/bin/env python
"""
    参数服务器操作之删除_Python实现:
    rospy.delete_param("键")
    键存在时，可以删除成功，键不存在时，会抛出异常
"""
from glob import escape
import rospy

if __name__ == "__main__":
    
    rospy.init_node("del_param")

try:
    #删除参数
    rospy.delete_param("radius")
except Exception as e:
    rospy.loginfo("删除的参数不存在")