cmd_/home/xiang/drive/Module.symvers := sed 's/\.ko$$/\.o/' /home/xiang/drive/modules.order | scripts/mod/modpost -m -a  -o /home/xiang/drive/Module.symvers -e -i Module.symvers   -T -
