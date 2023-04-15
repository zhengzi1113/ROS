#!/usr/bin/env python3

from ast import Expression
from xml.dom.minidom import Identified
from numpy import identity, rate
import rospy
import tf2_ros
from tf2_geometry_msgs import tf2_geometry_msgs
"""
    订阅方：订阅坐标消息，传入别转化的座标点，调用转化算法

    流程：
        1.导包
        2.初始化
        3.创建订阅对象
        4.组织被转化的坐标点
        5.转化逻辑实现，调用tf封装算法
        6.输出结果
        7.spin() | spinOnce()
"""

if __name__ =="__main__":

    rospy.init_node("static_sub")

    #创建订阅对象
    #创建缓存对象
    buffer = tf2_ros.Buffer()
    #创建订阅对象（将缓存传入）
    sub=tf2_ros.TransformListener(buffer)

    #组织被转化的坐标点
    ps=tf2_geometry_msgs.PointStamped()
    ps.header.stamp=rospy.Time.now()
    ps.header.frame_id="laser"
    ps.point.x = 2.0
    ps.point.y = 3.0
    ps.point.z = 5.0
    # 5.转化逻辑实现，调用tf封装算法
    rate=rospy.Rate(1)
    while not rospy.is_shutdown():
        try:      
            #转化实现
            ps_out = buffer.transform(ps,"base_link")
         # 6.输出结果
            rospy.loginfo("转化后的坐标：(%.2f,%.2f,%.2f),参考的坐标系:%s",
                    ps_out.point.x,
                    ps_out.point.y,
                    ps_out.point.z,
                    ps_out.header.frame_id
                    )        
        except Exception as e:
            rospy.logwarn("错误提示%s",e)
        rate.sleep()
    # 7.spin() | spinOnce()