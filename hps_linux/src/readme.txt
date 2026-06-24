Added is_groovy

Source updated from modern Main_MiSTer b29f171 with Groovy support merged in.
Build both binaries with bash ./compila.sh. On Homebrew's armv7 toolchain use:
BASE=armv7-linux-gnueabihf bash ./compila.sh

Listen on udp port 32100 

Setup rmem_max is NOT needed anymore
"
 1) create /etc/sysctl.conf file with "net.core.rmem_max = 2097152" content
 2) edit /etc/inittab and insert this line before MiSTer starts
    ...
    --> ::sysinit:/usr/sbin/sysctl -p
        ::sysinit:/media/fat/MiSTer &
    ...
"
