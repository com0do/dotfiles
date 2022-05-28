
# NOTE: 如果set print pretty on 不生效
# 在 /usr/local/gdb/share/gdb 目录(gdb的安装目录)下, 创建软链接
# ln -s /usr/share/gdb/auto-load auto-load 即可
set print pretty on

# 保存gdb历史命令
set history save on

# 开启log
set logging file ./gdb.log
set logging on

 set auto-load safe-path /

# macos 防卡住
# set startup-with-shell off

# 退出gdb quit
define hook-quit
    set confirm off
    save breakpoints .bps.txt
end
