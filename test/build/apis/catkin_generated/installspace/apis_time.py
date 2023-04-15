#!/usr/bin/env python3

from threading import Timer
from time import time
import rospy

"""
    需求1：演示时间相关操作(获取当前时刻 + 设置指定时刻)

    需求2：程序执行中停顿5秒

    需求3：获取程序开始执行的时刻，且一直持续运行的时间，计算程序结束时间

    需求4：创建定时器，实现类似 ros：：Rate的功能(隔某个时间间隔执行某种操作)

"""


def doMsg(event):
    rospy.loginfo("-------")
    rospy.loginfo("调用回调函数时刻;%.2f",event.current_real.to_sec())

if __name__ =="__main__":
    
    #需求1：演示时间相关操作(获取当前时刻 + 设置指定时刻)
    rospy.init_node("time")
    #获取时刻
    right_now = rospy.Time.now() #将当前时刻(1.now函数被调用执行的那一刻  2.1970.01.01 00:00)获取并封装成对象
    rospy.loginfo("当前时刻：%.2f",right_now.to_sec())
    rospy.loginfo("当前时刻：%d",right_now.secs)

    #设置指定
    time1 = rospy.Time(100)     #将时间(1970.01.01 00:00 过去100秒)封装成Time对象
    time2 = rospy.Time(100.123445)      #将时间(1970.01.01 00:00 过去100.123445秒)封装成Time对象

    rospy.loginfo("指定时刻1：%.2f",time1.to_sec())
    rospy.loginfo("指定时刻2：%.2f",time2.to_sec())

    #从某个时间值获取是时间对象
    time3 = rospy.Time.from_sec(210.12)
    rospy.loginfo("指定时刻3：%.2f",time3.to_sec())

    #需求2：程序执行中停顿5秒
    rospy.loginfo("休眠前--------------")
    du = rospy.Duration(5,0)
    #1.封装一个持续时间对象(5秒)
    #du .sleep() !此语句异常
    #rospy.sleep(du)
    #2.再将持续时间休眠
    rospy.loginfo("休眠后--------------")

    #需求3：获取程序开始执行的时刻，且一直持续运行的时间，计算程序结束时间
    #1.获取一个时刻
    t1 = rospy.Time.now()
    #2.设置一个持续时间
    du1 = rospy.Duration(5)
    #3.结束时刻 t2 = t1 +du1
    t2 =t1 + du1
    rospy.loginfo("开始时刻:%.2f",t1.to_sec())
    rospy.loginfo("开始时刻:%.2f",t2.to_sec())

    du2 = du +du1
    rospy.loginfo("持续时间相加：%.2f",du2.to_sec())

    #需求4：创建定时器，实现类似 ros：：Rate的功能(隔某个时间间隔执行某种操作)
    """
    @param period: 回调函数的时间间隔
    @type  period: rospy.Duration
    @param callback: 回调函数
    @type  callback: function taking rospy.TimerEvent
    @param oneshot: 设置为True，就只执行一次，否则循环执行
    @type  oneshot: bool
    @param reset: if True, timer is reset when rostime moved backward. [default: False]
    @type  reset: bool
    """
   # timer = rospy.Timer(rospy.Duration(2),doMsg,True) # 创将一个定时器对象 Ture将定时器设置为只执行一次
    timer = rospy.Timer(rospy.Duration(2),doMsg) # 创将一个定时器对象
    rospy.spin()        #重要