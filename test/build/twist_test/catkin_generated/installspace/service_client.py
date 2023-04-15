#!/.usr/bin/env python3

import rospy
from turtlesim.srv import Spawn,SpawnRequest,SetPenResponse

"""
    生成一只小乌龟
    准备工作:
        1.服务话题 /spawn
        2.服务消息类型 turtlesim/Spawn
        3.运行前先启动 turtlesim_node 节点

    实现流程:
        1.导包
          需要包含 turtlesim 包下资源，注意在 package.xml 配置
        2.初始化 ros 节点
        3.创建 service 客户端
        4.等待服务启动
        5.发送请求
        6.处理响应

"""
if __name__ == "__main__":

        # 2.初始化 ros 节点
        rospy.init_node("servioce_call")
        # 3.创建 service 客户端
        client = rospy.ServiceProxy("/spawn",Spawn)
        # 4.等待服务启动
        #组织数据
        request =SpawnRequest()
        request.x =4.5
        request.y =2.0
        request.theta = -3
        request.name ="turtle3"
        # 判断服务器状态并发送请求
        client.wait_for_service()
        try:
            response = client.call(request)
            # 6.处理响应
            rospy.loginfon("生成乌龟的名字叫：%s",response.name)
        except Exception as e:
            rospy.logerr("请求处理异常")