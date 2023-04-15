#!/usr/bin/env python3
"""
    订阅方:
        订阅消息

"""
import rospy
from hello.msg import Person

def doPerson(p):
    rospy.loginfo("接收到的人的信息:%s, %d, %.2f",p.anme, p.age, p.height)


if __name__ == "__main__":
    #1.初始化节点
    rospy.init_node("listener_person_p")

    #2.创建订阅者对象
    sub = rospy.Subscriber("person",Person,doPerson,queue_size=10)

    rospy.spin() #4.循环
