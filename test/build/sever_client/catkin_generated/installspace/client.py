#!/usr/bin/env python3

import rospy
import sys
from sever_client.srv import ADDints,ADDintsResponse,ADDintsRequest

"""
    需求: 
        编写两个节点实现服务通信，客户端节点需要提交两个整数到服务器
        服务器需要解析客户端提交的数据，相加后，将结果响应回客户端，
        客户端再解析

    客户器端实现:
        1.导包
        2.初始化 ROS 节点
        3.创建请求对象
        4.发送请求
        5.接收并处理响应


    优化实现：
        可以在执行点时，动态传入参数

    # 客户端先于服务端启动，等待服务已经就绪
    方案：
     1.client.wait_for_service()
     2.rospy.wait_for_service("服务器话题")

"""

if __name__ == "__main__":

    #判断参数长度是否为3个
    if len(sys.argv) !=3:
        rospy.logerr("传入参数个数不对！")
        sys.exit(1)
    #     2.初始化 ROS 节点
    rospy.init_node("addints_client_p")
    #     3.创建请求对象
    client = rospy.ServiceProxy("ADDints",ADDints)
    rospy.loginfo("客户对象创建中...")
    #     4.组织请求数据，发送请求
    #       解析传入的参数
    num1 = int(sys.argv[1])
    num2 = int(sys.argv[2])

    # 请求前，等待服务已经就绪
    #client.wait_for_service()
    rospy.wait_for_service("ADDints")

    response = client.call(num1,num2)
    #     5.接收并处理响应
    rospy.loginfo("响应的数据:%d",response.sum)