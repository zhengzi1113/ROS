#! /usr/bin/env python3

import queue
from xml.dom import DomstringSizeErr
import rospy
from std_msgs.msg import String 

def doMsg(msg):
    rospy.loginfo("%s",msg.data)

if __name__ =="__main__":

    rospy.init_node("jieshou")
    sub=rospy.Subscriber("che",String,doMsg,queue_size=10)

    rospy.spin()

