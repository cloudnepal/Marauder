#!/usr/bin/with-contenv sh

source /etc/colors.sh

PREFFIX="[services.d] [rclone-mount]-$(s6-basename ${0}):"

echo -e "${PREFFIX} ${Green}starting rclone mount $(date +%Y.%m.%d-%T)${Color_Off}"
/usr/sbin/rclone --config $ConfigPath mount $RemotePath $MountPoint $MountCommands