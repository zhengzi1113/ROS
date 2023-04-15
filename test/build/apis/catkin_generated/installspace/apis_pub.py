#!/usr/bin/env python3

from itertools import count
from numpy import rate
from rosgraph import ROS_HOSTNAME
import rospy
from std_msgs.msg import String #发布消息类型

"""
    作用：ros初始化
    参数：
         name --- 设置节点名称
         argv=None --- 封装节点调用时传递的参数
         anonymous=False --- 可以为节点名称生成最及后缀,可以解决重名问题

    使用：
        1.argv 使用
        可以按照ros中指定的语法格式传参，ros可以解析并使用

        2. anonymouse使用
        可以设置值为True ，可以为节点名称生成最及后缀,可以解决重名问题

"""

def cd():
    rospy.loginfo("节点正在被关闭....")

if __name__ == "__main__":

    rospy.init_node("name",anonymous=True)
    #创建发布者对象
    """
    内容：latch
        bool值，默认为False
    作用：
        如果设置为True，可以将发布的俄最后一条数据保存，且后续新的订阅对象连接时，会将数据
        发送给订阅者
    使用：
        latch =True 

    """
    pub =rospy.Publisher("che",String,queue_size=10,latch=True)

    msg=String()

    rate=rospy.Rate(2)

    count=0

    rospy.sleep(1)

    while not rospy.is_shutdown():

        count+=1

        if count<=10:
            msg.data= "hello" + str(count)

            pub.publish(msg)

            rospy.loginfo("发布的数据：%s",msg.data)
            
        else:
            #关闭节点
            rospy.on_shutdown(cd)
            rospy.signal_shutdown("关闭节点")
        
        rate.sleep()