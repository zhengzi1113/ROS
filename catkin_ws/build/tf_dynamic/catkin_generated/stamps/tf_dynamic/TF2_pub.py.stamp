#! /usr/bin/env python
"""  
    动态的坐标系相对姿态发布(一个坐标系相对于另一个坐标系的相对姿态是不断变动的)

    需求: 启动 turtlesim_node,该节点中窗体有一个世界坐标系(左下角为坐标系原点)，乌龟是另一个坐标系，键盘
    控制乌龟运动，将两个坐标系的相对位置动态发布

    实现分析:
        1.乌龟本身不但可以看作坐标系，也是世界坐标系中的一个坐标点
        2.订阅 话题：turtle1/Pose 类型:/turtlesim/Pose,可以获取乌龟在世界坐标系的 x坐标、y坐标、偏移量以及线速度和角速度
        3.将 pose 信息转换成 坐标系相对信息并发布
    实现流程:
        1.导包
        2.初始化 ROS 节点
        3.订阅 /turtle1/pose 话题消息
        4.回调函数处理
            4-1.创建 TF 广播器
            4-2.创建 广播的数据(通过 pose 设置)
            4-3.广播器发布数据
        5.spin
"""
# 1.导包
import turtle
import rospy
import tf2_ros
import tf
from turtlesim.msg import Pose
from geometry_msgs.msg import TransformStamped
import sys


#接受乌龟名称的变量
turtle_name=""

#     4.回调函数处理
def doPose(pose):
    #         4-1.创建 发布坐标系相关对象
    pub = tf2_ros.TransformBroadcaster()
    #         4-2.将pose 转化成坐标系相关关系消息
    tfs = TransformStamped()
    tfs.header.frame_id = "world"
    tfs.header.stamp = rospy.Time.now()
    #修改2.————————————————————————
    #子级坐标系名称
    tfs.child_frame_id = turtle_name

    #子级坐标系相对父级坐标系偏移量
    tfs.transform.translation.x = pose.x
    tfs.transform.translation.y = pose.y
    tfs.transform.translation.z = 0.0

    #四元数
    #欧拉角 转化四元数
    """
        乌龟是2D 不存在x上的翻滚和y上的俯仰，只有Z上的偏航
        0 0 pose.theta
    """
    qtn = tf.transformations.quaternion_from_euler(0,0,pose.theta)
    tfs.transform.rotation.x = qtn[0]
    tfs.transform.rotation.y = qtn[1]
    tfs.transform.rotation.z = qtn[2]
    tfs.transform.rotation.w = qtn[3]
    #         4-3.发布数据
    pub.sendTransform(tfs)

if __name__ == "__main__":
    # 2.初始化 ROS 节点
    rospy.init_node("dynamic_pub")

    #解析传入的参数（现在传入几个参数？）
    """
        1.文件全路径
        2.传入的参数
        3.节点名称
        4.日志文件路径
    """

    if len(sys.argv)!=4:
        rospy.loginfo("参数个数不对")
        sys.exit(1)
    else:
        turtle_name=sys.argv[1]

    # 3.订阅 /turtle1/pose 话题消息
    #修改1.-------------------------
    #话题名称

    sub = rospy.Subscriber(turtle_name+"/pose",Pose,doPose,queue_size=100)
    #     4.回调函数处理
    #         4-1.创建 TF 广播器
    #         4-2.创建 广播的数据(通过 pose 设置)
    #         4-3.广播器发布数据
    #     5.spin
    rospy.spin()
