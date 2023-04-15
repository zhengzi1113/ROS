#! /usr/bin/env python

from time import time
import rosbag
import rospy
# from std_msgs.msg import String


"""
    需求：读取磁盘上的 bag 文件
    流程：
        1.导包
        2.初始化
        3.创建 rosbag 对象并且打开文件流
        4.读数据
        5.释放资源

"""

if __name__ == "__main__":
        
        # 2.初始化
        rospy.init_node("write_bag")

        # 3.创建 rosbag 对象并且打开文件流
        bag = rosbag.Bag("hello_p.bag","r")
        # 4.写数据
        msgs = bag.read_messages("/liaotian")
        for topic,msg,time in msgs:
            rospy.loginfo("话题:%s,消息:%s,时间:%s",topic,msg.data,time)
        # 5.释放资源
        bag.close()