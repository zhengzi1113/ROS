cmd_/home/xiang/drive/modules.order := {   echo /home/xiang/drive/hello3.ko; :; } | awk '!x[$$0]++' - > /home/xiang/drive/modules.order
