#!/system/bin/sh
/system/bin/rfkill block all
sleep 1
rmmod sd8xxx
rmmod mlan
cd /system/lib/modules
sleep 2
/system/bin/rfkill unblock all
insmod mlan.ko
insmod sd8787.ko "mfg_mode=1 drv_mode=1 fw_name=mrvl/w8787_wlan_SDIO_bt_SDIO.bin"
sleep 1
