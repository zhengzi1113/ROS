#include "pluginlib/class_list_macros.h"
#include "plug/dbx_base.h"
#include "plug/dbx_plugins.h"


//参数1：子类 参数2：父类 参数3：
PLUGINLIB_EXPORT_CLASS(dbx_plugins_ns::SanBian,dbx_base_ns::Dbx_Base)
PLUGINLIB_EXPORT_CLASS(dbx_plugins_ns::SiBian,dbx_base_ns::Dbx_Base)

