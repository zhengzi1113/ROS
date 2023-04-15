#!/usr/bin/env python3

"""
    参数服务器操作之查询_Python实现:    
        get_param(键,默认值)
            当键存在时，返回对应的值，如果不存在返回默认值
        get_param_cached
             和  get_param 使用一致，只是效率高
        get_param_names
            获取所有的参数的键的集合
        has_param
            判断是否含有某个键
        search_param
            查找某个参数的键，并返回完整的键名
"""

from matplotlib.pyplot import flag
import rospy

if __name__ =="__main__":

    rospy.init_node("get_param")
    #get_param(键,默认值)
    radius = rospy.get_param("radius",0.5)
    radius2 = rospy.get_param("radius_xxx",0.5)

    rospy.loginfo("radius = %.2f",radius)
    rospy.loginfo("radius2 = %.2f",radius2)

    #get_param_cached  效率更高 直接从缓冲中获取
    radius3 = rospy.get_param_cached("radius",0.5)
    radius4 = rospy.get_param_cached("radius_xxx",0.5)

    rospy.loginfo("radius3 = %.2f",radius3)
    rospy.loginfo("radius4 = %.2f",radius4)

    #get_param_names
    names=rospy.get_param_names()
    for name in names:
        rospy.loginfo("name = %s",name)

    #has_param
    flag1 = rospy.has_param("radius")
    if flag1:
        rospy.loginfo("radius 存在")
    else :
        rospy.loginfo("radius 不存在")

    flag2 = rospy.has_param("radius_xxx")
    if flag2:
        rospy.loginfo("radius_xxx 存在")
    else :
        rospy.loginfo("radius_xxx 不存在")

    #search_param
    key = rospy.search_param("radius")
    rospy.loginfo("key = %s",key)