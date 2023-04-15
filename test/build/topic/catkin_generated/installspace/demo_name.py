#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

if __name__ =="__main__":
    rospy.init_node("name")
    """
        需求：实现不同话题的话题设置
    
    """
    # 全局
    # pub = rospy.Publisher("/chatter",String,queue_size=18)
 
    # pub = rospy.Publisher("/yyy/chatter",String,queue_size=18)

    # 相对
    # pub = rospy.Publisher("chatter",String,queue_size=18)
   
    # pub = rospy.Publisher("yyy/chatter",String,queue_size=18)

    # 私有
    # pub = rospy.Publisher("~chatter",String,queue_size=18)
    # pub = rospy.Publisher("~yyy/chatter",String,queue_size=18)

    while not rospy.is_shutdown():

        pass