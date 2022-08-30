alias Q='exit'
alias cctrans="proxychains trans :zh"
alias cclg='lazygit'
alias ccqv2ray="nohup Qv2ray > ~/test/nohup.out &"
#alias ccserial="sudo putty -load serial-1 &"
alias ccserial="sudo minicom -s /dev/ttyUSB0"

#alias esp_p1_app2='sudo python /home/rex/YeelightWorkspace/esp32_mi2x/esp-idf/components/esptool_py/esptool/esptool.py --chip esp32 --port /dev/ttyUSB1 --baud 921600 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect 0x10000 miio_app_crc.bin 0x1f0000 miio_app_crc.bin'
#sudo python /home/rex/YeelightWorkspace/esp32_mi2x/esp-idf/components/esptool_py/esptool/esptool.py --chip esp32 --port /dev/ttyUSB2 --baud 921600 --before default_reset --after hard_reset --flash_mode dio --flash_freq 40m read_flash 0x3e4000 0x4000 homekit_bin.bin

# esp32
alias ccidf='. $HOME/install/work/esp32_mi2x/esp-idf/export.sh'
alias ccidf_3='export PATH="$HOME/tools/xtensa-esp32-elf/bin:$PATH" && source p2/bin/activate'
alias ccflashing="python  ../esp-idf/components/esptool_py/esptool/esptool.py   --chip esp32 --port /dev/ttyUSB0 --baud 460800 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect  0x10000"
alias ccflashingB="python  ../esp-idf/components/esptool_py/esptool/esptool.py   --chip esp32 --port /dev/ttyUSB0 --baud 460800 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect  0x1f0000"
alias ccflashing_4M="python  ../esp-idf/components/esptool_py/esptool/esptool.py   --chip esp32 --port /dev/ttyUSB0 --baud 460800 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect  0x0"
alias ccflashingRead="python  ../esp-idf/components/esptool_py/esptool/esptool.py   --chip esp32 --port /dev/ttyUSB0 --baud 460800 --before default_reset --after hard_reset read_flash 0x0 0x400000"
alias cchomekitRead="python  ../esp-idf/components/esptool_py/esptool/esptool.py   --chip esp32 --port /dev/ttyUSB0 --baud 460800 --before default_reset --after hard_reset read_flash 0x3e4000 0x4000"
alias cchomekitWrite="python  ../esp-idf/components/esptool_py/esptool/esptool.py   --chip esp32 --port /dev/ttyUSB0 --baud 460800 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect  0x3e4000"


# chip
alias cchip='cd ~/install/work/matter_esp32/project'
alias cchipT='. ~/install/work/esp-idf/export.sh && cd ~/code/connectedhomeip'
alias cchipCtl='. ./out/python_env/bin/activate'

# directory
alias ccclion="nohup clion > ~/test/nohup.out &"
alias ccgate="cd /home/carlos/install/work/yiot_mesh_gateway/rtl819x-SDK-v3.4.11E-full-package/rtl819x"
alias ccesp="cd /home/carlos/install/work/esp32_mi2x/miio_project"
alias ccesp_tmp="cd /home/carlos/install/work/tmp/esp32_mi2x/miio_project"
alias ccuni="cd /home/carlos/install/work/commercial_lighting"

# ssh
alias cchss="ssh xincui@10.67.30.52"
alias cchlr="ssh xincui@10.67.34.208"
alias cc12="ssh cuixingang@192.168.0.12"
alias ccg1="ssh carlos@10.243.226.139"
alias ccautobuild="ssh auto_build@192.168.0.12"
alias cc60="ssh cuixingang@192.168.0.60"
alias ccwrt="ssh  root@192.168.9.1"
alias ccthread="cd /home/carlos/code/ot-git"
alias cchc32='git clone ssh://pub_git@192.168.1.96:24396/home/pub_git/hc32f460'
alias ccot_git='git clone ssh://collaboration@localhost:/home/collaboration/ot-git'

# python version switch
alias ccpythonv="python --version"
#alias ccpython2="echo 1 | sudo update-alternatives --config python"
alias ccpython2='virtualenv  -p /usr/bin/python2.7 p2 --system-site-package && source p2/bin/activate'
#alias ccpython3="echo 0 | sudo update-alternatives --config python"

# alias
alias ccalias="vi ~/.bash_aliases"
alias ccbashrc='source ~/.bashrc'

# PATH
alias ccpath="echo $PATH|tr : \\\n"
alias ccgcc='export PATH="$HOME/tools/gcc-arm-none-eabi-7-2018-q2-update/bin:$PATH"'

# pyocd
alias ccocd='pyocd flash -t hc32f460xe'

# sshfs
alias ccfw_build="sudo sshfs -o cache=yes,allow_other auto_build@192.168.0.12:/yeedata/fw_builds ~/hardware/fw_builds/"
#alias cchss_fs="sudo sshfs -o cache=yes,allow_other xincui@10.67.30.52:/home/xincui/work/hss ~/work/remote/hss/"
#alias cchss_tools="sudo sshfs -o cache=yes,allow_other xincui@10.67.30.52:/imsgit/Tools/ims_22.8_reg/ims_tools /imsgit/Tools/ims_22.8_reg/ims_tools"
#alias cchlr_fs="sudo sshfs -o cache=yes,allow_other xincui@10.67.34.208:/home/xincui/work/hlr/HLR ~/work/remote/hlr/"
ccfs()
{
  if [ $# -ne 1 ] ;then echo "usage: ccfs remote_host" && return ;fi
  if [[ $1 == hss* ]] ; then
    sudo sshfs -o cache=yes,allow_other xincui@10.67.30.52:/home/xincui/work/hss ~/work/remote/hss/ && df -h|grep hss
  elif [[ $1 == hlr* ]] ; then
    sudo sshfs -o cache=yes,allow_other xincui@10.67.34.208:/home/xincui/work/hlr/HLR ~/work/remote/hlr/ && df -h|grep hlr
  else
    printf "what up: %s\n" $1
  fi
}
# shit
alias coverage='scp -r hss:/home/xincui/work/hss/ims_mt/reports/code_coverage /mnt/c/N-20W1PF3L36PJ-Data/xincui/Desktop/'

# system tool
alias ccshutdown="sudo shutdown now"
alias ccjlinkview="JLinkRTTViewerExe &"
alias ccjlinkdownload="JFlashLiteExe &"


# git
alias ccpull='git pull --rebase'
alias ccgit_root='cd $(git rev-parse --show-toplevel)'

# homekit
alias cckit_server='cd /home/carlos/install/tools/homekit_factory_toolv30/homekit_server/src/'
alias cckit_client='cd /home/carlos/install/tools/homekit_factory_toolv30/homekit_download_client/src/ '
alias cckit_check='cd /home/carlos/install/tools/homekit_factory_toolv30/homekit_check_client/src/'

# vim
alias ccvim='cd ~/.vim/vim-init/init && vi init-pl*'
#alias nvim='proxychains nvim'

# test
alias cctest='vi ~/test/hello/main.cpp'

# private setting
source ~/.aliases_private.sh

