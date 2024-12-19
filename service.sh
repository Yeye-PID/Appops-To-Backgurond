#!/system/bin/sh
            if [ ! -f /sdcard/Module-Yeye/service ]; then
            echo "Files di Temukan memulai execute "
             else
                echo "Files tidak ditemukan silahkan Estrak yang bener"
              fi > /dev/null 2>&1
              
    if [ "$(id -u)" -ne 2000 ]; then
        echo "[ Eror | @Yeye_Nat ]"
          exit 1
      fi
        # Sempat Notification CMD
     notif() {
     massager="$1"
      cmd notification post -S bigtext -t '🍃 Readus CPU and RAM' 'Tag' "$massager" > /dev/null 2>&1
  }
   set +x
   notif "state CPU Total Bifor : $(dumpsys cpuinfo | grep TOTAL | cut -f1 -d TOTAL),  state Total Free RAM Bifor : $(cat /proc/meminfo | grep MemFree | cut -f2 -d: | awk -F  ' ' '{print $1}')"
   echo
   echo
   echo 
   echo "                   Open Source Github Yeye-PID            "
   echo "            (+)--------------------------(+) "
   echo
   echo " Discriptipn Readus CPU And RAM"
   echo "- Author       : Yeye_nat "
   echo "- Version.    :  1.0"
   echo "- Release    :  19 - Des - 2024"
   echo
   echo "x------------------------------------x"
   echo
   echo
   set +x
       #lop utama
       inti() {
      for svc in `pm list package google | cut -f2 -d:`; do
     if [[ ! "$svc" == com.google.android.gms ]]; then
    cmd appops set $svc RUN_IN_BACKGROUND $1
     cmd appops set $svc RUN_ANY_IN_BACKGROUND $1
      cmd appops set $svc START_FOREGROUND $1
     cmd activity force-stop current $svc
        cmd activity kill-all
      cmd device_config set_sync_disabled_for_tests none
        sync
      fi
          done
      }
   echo 
   echo "Wait To Proses...."
   echo "."
   sleep 1
   echo "."
   sleep 1
   echo "."
   echo "."
   sleep 1
   echo "."
   sleep 1
   echo "."
   sleep 1
   echo "."
   set +x
   inti deny
   echo "Sucess To Proese..."
   echo 
   echo "Note : "
   echo "Efek tergantung pelmentasi "
   echo "appops kalian juga dill"
   echo
   echo
   echo "⚠️ Module Ini Hanya Untuk pengguna biasa"
   echo "Tidak untuk pengembang lain, Dilarang keras mendisen"
   echo "Modifikasi dan lain-lainya tanpa izin resmi Pembuat Module"
   echo "_________________________________________________(+)"
   notif "state CPU Total After : $(dumpsys cpuinfo | grep TOTAL | cut -f1 -d TOTAL),  state Total Free RAM After : $(cat /proc/meminfo | grep MemFree | cut -f2 -d: | awk -F  ' ' '{print $1}')"
   echo
   set +x