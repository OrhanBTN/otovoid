# Renk Kodları
	kirmizi="\033[30;41;5m"
	yesil="\033[30;42;5m"
	sari="\033[30;43;5m"
	mavi="\033[30;44;5m"
	mor="\033[30;45;5m"
	lacivert="\033[30;46;5m"
	sfr="\033[0m"

# Root Yetki Kontrolu
	roottest () {
  		if [[ $EUID -gt 0 ]]; then
			echo "\n \n"
    		echo "${kirmizi}Bu Script Kullanabilmek Icin Root Yetkisine Ihtıyac Vardir.${sfr}\n"
    		exit 255
 		 fi
	}

roottest

alias cls="clear"
cls

echo "\n \n"
echo "\n ${yesil} Void Linux Kurulum Sonrasi Otomatik Program Yukleme Araci ${sfr} \n"
sleep 2
echo "\n ${kirmizi} Duzenleyen OrhanBTN ${sfr} \n"
sleep 2
echo "\n ${mor} Kodlama oSoWoSo ${sfr} \n"
sleep 2
echo "\n ${lacivert} Kurulum Basliyor ${sfr} \n"
sleep 2
echo "\n ${yesil} 3 ${sfr} \n"
sleep 1
echo "\n ${sari} 2 ${sfr} \n"
sleep 1
echo "\n ${mor} 1 ${sfr} \n"
sleep 1
echo "\n ${kirmizi} 0 ${sfr} \n"
sleep 1

cls

echo "\n \n"
echo "\n ${sari} Sistem ve Deopolar Gunceleniyor... ${sfr} \n"
    sleep 2
    xbps-install -Suy
    echo "\n ${yesil} Tamam! ${sfr} \n"
    sleep 2
    cls

echo "\n \n"
echo "\n ${sari} Gerekli Paketler Yukleniyor... ${sfr} \n"
    sleep 2
	xbps-install -y curl wget unzip zip nano vim gptfdisk mtools mlocate \
	ntfs-3g fuse-exfat bash-completion
	echo "\n ${yesil} Tamam! ${sfr} \n"
    sleep 2
    cls

read -p "\n ${sari} Grafiksel Arayuz Yuklemek Istermısiniz:?... (e/h) ${sfr} \n" xwinsys
case $xwinsys in
	e )

	echo "\n${BLUE}Install the X Window System...${DEFAULT}\n"

	xbps-install xorg-server xorg-server-xwayland xorg-video-drivers xorg-input-drivers \
		xinit xauth xrandr xrdb xwininfo xdpyinfo xsetroot neofetch

	echo "\n${BLUE}Copy configurations...${DEFAULT}\n"

	if [ ! -d /etc/X11/xorg.conf.d ]; then
		mkdir -p /etc/X11/xorg.conf.d
	fi

	cp -r 00-keyboard.conf /etc/X11/xorg.conf.d/
	cp -r 20-libinput.conf /etc/X11/xorg.conf.d/

	echo "\n${GREEN}Done${DEFAULT}\n"

	sleep 1

	# Install a Desktop environment

	echo "\n${BLUE}Install a Desktop environment...${DEFAULT}\n"
	echo "Possible (type in number): \n
	- 1 Xfce
	- 2 MATE
	- 3 GNOME
	- 4 KDE Plasma
	- 5 Budgie
	- 6 Cinnamon
	- 7 LXQt
	- 8 Enlightenment
	- 9 LXDE
	- 0 none\n"

	read -p "Which Desktop environment do you want? " desktop
	case $desktop in
		1 ) 

		echo "\n${BLUE}Install Xfce...${DEFAULT}\n"

		xbps-install xfce4-appfinder xfce4-battery-plugin xfce4-clipman-plugin xfce4-cpufreq-plugin \
			xfce4-cpugraph-plugin xfce4-dict xfce4-diskperf-plugin xfce4-fsguard-plugin \
			xfce4-genmon-plugin xfce4-mailwatch-plugin xfce4-mpc-plugin xfce4-netload-plugin \
			xfce4-notifyd xfce4-panel xfce4-panel-appmenu xfce4-places-plugin xfce4-power-manager \
			xfce4-pulseaudio-plugin xfce4-screensaver xfce4-screenshooter xfce4-sensors-plugin \
			xfce4-session xfce4-settings xfce4-systemload-plugin xfce4-taskmanager xfce4-terminal \
			xfce4-timer-plugin xfce4-verve-plugin xfce4-whiskermenu-plugin xfce4-xkb-plugin \
			Thunar thunar-volman thunar-archive-plugin thunar-media-tags-plugin ristretto parole \
			xarchiver mousepad xfwm4 xfdesktop lightdm lightdm-gtk3-greeter lightdm-gtk-greeter-settings \
			zathura zathura-pdf-poppler gvfs gvfs-mtp gvfs-gphoto2 xfce-polkit

		echo "\n${GREEN}Done${DEFAULT}\n"
			
		;;
		
		2 ) 

		echo "\n${BLUE}Install MATE...${DEFAULT}\n"

		xbps-install mate-applets mate-backgrounds mate-calc mate-control-center mate-desktop \
			mate-icon-theme mate-indicator-applet mate-media mate-menus mate-notification-daemon \
			mate-panel mate-panel-appmenu mate-screensaver mate-sensors-applet mate-session-manager \
			mate-settings-daemon mate-system-monitor mate-terminal mate-themes mate-tweak mate-utils \
			mozo pluma parole caja caja-image-converter caja-sendto caja-open-terminal caja-wallpaper \
			caja-xattr-tags eom atril lightdm lightdm-gtk3-greeter lightdm-gtk-greeter-settings \
			gvfs gvfs-mtp gvfs-gphoto2 engrampa mate-power-manager mate-polkit
		
		echo "\n${GREEN}Done${DEFAULT}\n"
			
		;;
		
		3 )

		echo "\n${BLUE}Install GNOME...${DEFAULT}\n"

		xbps-install gnome-shell gnome-control-center gnome-tweaks gnome-system-monitor gnome-terminal gdm \
			gnome-disk-utility nautilus nautilus-sendto gvfs gvfs-mtp gvfs-gphoto2 totem eog eog-plugins \
			evince gedit gedit-plugins gnome-video-effects gnome-themes-extra gnome-session gnome-screenshot \
			gnome-shell-extensions gnome-icon-theme gnome-icon-theme-extras gnome-icon-theme-symbolic \
			gnome-backgrounds file-roller chrome-gnome-shell
					
		echo "\n${BLUE}GNOME Applications${DEFAULT}\n"
		echo "Includes: GNOME Calendar, GNOME Clocks, GNOME Weather, Evolution, GNOME Font Viewer,"
		echo "GNOME Calculator, GNOME Characters, GNOME Contacts, GNOME Documents, GNOME Maps\n"

		read -p "Do you want to install GNOME applications? (y/N) " gnomeapps
		case $gnomeapps in
			y )

			echo "\n${BLUE}Install GNOME applications...${DEFAULT}\n"

			xbps-install gnome-calendar gnome-clocks gnome-weather evolution gnome-font-viewer \
				gnome-calculator gnome-characters gnome-contacts gnome-documents gnome-maps

			;;
		
			n )

			;;
		esac
		
		echo "\n${GREEN}Done${DEFAULT}\n"

		;;
		
		4 )

		echo "\n${BLUE}Install KDE Plasma...${DEFAULT}\n"

		xbps-install plasma-desktop plasma-disks plasma-thunderbolt plasma-systemmonitor plasma-pa plasma-nm \
			plasma-firewall plasma-browser-integration plasma-vault latte-dock oxygen kdegraphics-thumbnailers \
			dolphin dolphin-plugins kate5 konsole okular gwenview ark sddm sddm-kcm yakuake spectacle \
			partitionmanager ffmpegthumbs kde-gtk-config5

		echo "\n${BLUE}KDE Applications${DEFAULT}\n"
		echo "Includes: KMail, Kontact, KOrganizer, KAddressbook, Akregator, Konversation, KCalc, KCharSelect\n"

		read -p "Do you want to install KDE applications? (y/N) " kdeapps
		case $kdeapps in
			y )

			echo "\n${BLUE}Install KDE applications...${DEFAULT}\n"

			xbps-install kmail kontact korganizer kaddressbook akregator konversation kcalc kcharselect

			;;

			n )

			;;
		esac

		read -p "Do you want to use KDE Connect? (y/N) " kdeconnect
		case $kdeconnect in
			y )

			echo "\n${BLUE}Install KDE Connect...${DEFAULT}\n"

			xbps-install kdeconnect

			;;

			n )

			;;
		esac

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		5 )

		echo "\n${BLUE}Install Budgie...${DEFAULT}\n"

		xbps-install budgie-desktop gnome-control-center gnome-system-monitor gnome-terminal nautilus \
			nautilus-sendto gnome-keyring lightdm lightdm-gtk3-greeter lightdm-gtk-greeter-settings \
			evince gedit gedit-plugins eog eog-plugins parole gnome-screenshot gnome-disk-utility \
			gvfs gvfs-mtp gvfs-gphoto2 file-roller

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		6 )

		echo "\n${BLUE}Install Cinnamon...${DEFAULT}\n"

		xbps-install cinnamon gnome-system-monitor gnome-terminal gnome-screenshot gnome-disk-utility \
			gnome-keyring gedit gedit-plugins evince gvfs gvfs-mtp gvfs-gphoto2 parole lightdm lightdm-gtk3-greeter \
			lightdm-gtk-greeter-settings eog eog-plugins file-roller
		
		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		7 )

		echo "\n${BLUE}Install LXQt...${DEFAULT}\n"

		xbps-install lxqt-about lxqt-admin lxqt-archiver lxqt-build-tools lxqt-config lxqt-globalkeys lxqt-notificationd \
			lxqt-openssh-askpass lxqt-panel lxqt-policykit lxqt-powermanagement lxqt-qtplugin lxqt-runner lxqt-session \
			lxqt-sudo lxqt-themes obconf-qt openbox pcmanfm-qt lximage-qt FeatherPad qlipper lightdm lightdm-gtk3-greeter \
			lightdm-gtk-greeter-settings qterminal

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		8 )

		echo "\n${BLUE}Install Enlightenment...${DEFAULT}\n"

		xbps-install enlightenment terminology mousepad gvfs gvfs-mtp gvfs-gphoto2 parole zathura zathura-pdf-poppler \
			Thunar thunar-volman thunar-archive-plugin thunar-media-tags-plugin lightdm lightdm-gtk3-greeter \
			lightdm-gtk-greeter-settings xarchiver

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		9 )

		echo "\n${BLUE}Install LXDE...${DEFAULT}\n"

		xbps-install lxde-common lxde-icon-theme lxappearance lxinput lxpanel lxrandr lxsession lxtask \
			lxterminal pcmanfm gvfs gvfs-mtp gvfs-gphoto2 viewnior lightdm lightdm-gtk3-greeter \
			lightdm-gtk-greeter-settings mousepad parole zathura zathura-pdf-poppler openbox obconf \
			lxappearance-obconf xarchiver

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;
		
		0 ) 
			
		;;
	esac

	sleep 1

	# Install display manager
	
	echo "\n${BLUE}Install a display manageer...${DEFAULT}\n"
	echo "Possible (type in number): \n
	- 1 LightDM
	- 2 emptty
	- 3 slim
	- 0 none\n"
	
	read -p "Which display manager do you want? " displaymanager
	case $displaymanager in

		1 )
		
		echo "\n${BLUE}Install LightDM...${DEFAULT}\n"		
		
		xbps-install lightdm lightdm-gtk3-greeter lightdm-gtk-greeter-settings
		
		echo "\n${GREEN}Done${DEFAULT}\n"
			
		;;
		
		2 )

		echo "\n${BLUE}Install emptty...${DEFAULT}\n"		

		xbps-install emptty

		echo "\n${GREEN}Done${DEFAULT}\n"
					
		;;

		3 )

		echo "\n${BLUE}Install slim...${DEFAULT}\n"		

		xbps-install slim

		echo "\n${GREEN}Done${DEFAULT}\n"
					
		;;
		
		0 ) 
			
		;;
	esac

	sleep 1

	# Install a Window manager
	
	echo "\n${BLUE}Install a Window Manager...${DEFAULT}\n"
	echo "Possible (type in number): \n
	- 1 i3-gaps
	- 2 Openbox
	- 3 Fluxbox
	- 4 bspwm
	- 5 herbstluftwm
	- 6 IceWM
	- 7 awesome
	- 8 jwm
	- 9 dwm
	- 10 FVWM3
	- 0 none\n"

	read -p "Which Window manager do you want? " windowmanager
	case $windowmanager in
		1 ) 

		echo "\n${BLUE}Install i3-gaps...${DEFAULT}\n"

		xbps-install i3-gaps i3lock i3status i3blocks dunst dmenu feh Thunar \
			thunar-volman thunar-archive-plugin thunar-media-tags-plugin xarchiver \
			lm_sensors acpi playerctl scrot htop xfce4-terminal arandr gvfs gvfs-mtp \
			gvfs-gphoto2 mousepad xfce4-taskmanager viewnior

		echo "\n${GREEN}Done${DEFAULT}\n"
			
		;;

		2 )

		echo "\n${BLUE}Install Openbox...${DEFAULT}\n"

		xbps-install openbox obconf lxappearance lxappearance-obconf jgmenu dunst \
			feh lxterminal lxrandr lxinput pcmanfm gvfs gvfs-mtp gvfs-gphoto2 \
			mousepad lxtask scrot htop xarchiver viewnior

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;
		
		3 )

		echo "\n${BLUE}Install Fluxbox...${DEFAULT}\n"

		xbps-install fluxbox dunst feh xfce4-terminal arandr Thunar thunar-volman thunar-archive-plugin \
			thunar-media-tags-plugin gvfs gvfs-mtp gvfs-gphoto2 mousepad xfce4-terminal scrot htop xarchiver \
		        viewnior

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		4 )

		echo "\n${BLUE}Install Bspwm...${DEFAULT}\n"

		xbps-install bspwm sxhkd dunst feh dmenu xfce4-terminal arandr Thunar thunar-volman thunar-archive-plugin \
			thunar-media-tags-plugin gvfs gvfs-mtp gvfs-gphoto2 mousepad scrot htop xarchiver viewnior

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		5 )

		echo "\n${BLUE}Install herbstluftwm...${DEFAULT}\n"

		xbps-install herbstluftwm dunst feh dmenu xfce4-terminal arandr Thunar thunar-volman thunar-archive-plugin \
			thunar-media-tags-plugin gvfs gvfs-mtp gvfs-gphoto2 mousepad scrot htop xarchiver viewnior

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		6 )

		echo "\n${BLUE}Install IceWM...${DEFAULT}\n"

		xbps-install icewm dunst feh dmenu xfce4-terminal arandr Thunar thunar-volman thunar-archive-plugin \
			thunar-media-tags-plugin gvfs gvfs-mtp gvfs-gphoto2 mousepad scrot htop xarchiver viewnior

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		7 )

		echo "\n${BLUE}Install awesome...${DEFAULT}\n"

		xbps-install awesome vicious dunst feh arandr xfce4-terminal Thunar thunar-volman \
				thunar-archive-plugin thunar-media-tags-plugin gvfs gvfs-mtp gvfs-gphoto2 mousepad scrot \
				htop xarchiver viewnior

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		8 )

		echo "\n${BLUE}Install jwm...${DEFAULT}\n"

		xbps-install jwm dunst feh dmenu xfce4-terminal arandr Thunar thunar-volman thunar-archive-plugin \
			thunar-media-tags-plugin gvfs gvfs-mtp gvfs-gphoto2 mousepad scrot htop xarchiver viewnior

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		9 )

		echo "\n${BLUE}Install dwm...${DEFAULT}\n"

		xbps-install dwm dunst feh dmenu xfce4-terminal arandr Thunar thunar-volman thunar-archive-plugin \
			thunar-media-tags-plugin gvfs gvfs-mtp gvfs-gphoto2 mousepad scrot htop xarchiver viewnior

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		10 )

		echo "\n${BLUE}Install FVWM3...${DEFAULT}\n"

		xbps-install fvwm3 feh xfce4-terminal arandr Thunar thunar-volman thunar-archive-plugin \
			thunar-media-tags-plugin gvfs gvfs-mtp gvfs-gphoto2 mousepad scrot htop xarchiver viewnior

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		0 ) 
			
		;;
	esac

	sleep 1

	# Install fonts

	read -p "Do you want to install some fonts? (y/N) " fonts
	case $fonts in
		y ) 

		echo "\n${BLUE}Install fonts...${DEFAULT}\n"

		xbps-install liberation-fonts-ttf dejavu-fonts-ttf \
			ttf-ubuntu-font-family fonts-roboto-ttf

		echo "\n${GREEN}Done${DEFAULT}\n"
			
		;;
		
		n ) 
			
		;;
	esac

	sleep 1

	# Install an Internet browser

	echo "\n${BLUE}Install an Internet browser...${DEFAULT}\n"
	echo "Possible (type in number): \n
	- 1 Firefox
	- 2 Firefox-ESR
	- 3 Chromium
	- 4 qutebrowser
	- 5 Falkon
	- 0 None\n"

	read -p "Which browser do you want? " browser
	case $browser in
		1 )

		echo "\n${BLUE}Install Firefox...${DEFAULT}\n"

		xbps-install firefox firefox-i18n-en-US firefox-i18n-de

		echo "\n${GREEN}Done${DEFAULT}\n"
			
		;;

		2 ) 

		echo "\n${BLUE}Install Firefox Extended Support Release...${DEFAULT}\n"

		xbps-install firefox-esr firefox-esr-i18n-en-US firefox-esr-i18n-de

		echo "\n${GREEN}Done${DEFAULT}\n"
			
		;;

		3 ) 

		echo "\n${BLUE}Install Chromium...${DEFAULT}\n"

		xbps-install chromium

		echo "\n${GREEN}Done${DEFAULT}\n"
			
		;;

		4 )

		echo "\n${BLUE}Install qutebrowser...${DEFAULT}\n"

		xbps-install qutebrowser

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		5 )

		echo "\n${BLUE}Install Falkon...${DEFAULT}\n"

		xbps-install falkon

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;
		
		0 ) 
			
		;;
	esac

	sleep 1

	# Install LibreOffice

	read -p "Do you want to install LibreOffice? (y/N) " libreoffice
	case $libreoffice in
		y )

		echo "\n${BLUE}Install LibreOffice...${DEFAULT}\n"

		xbps-install libreoffice-writer libreoffice-calc libreoffice-impress \
			libreoffice-draw libreoffice-math libreoffice-base libreoffice-gnome \
			libreoffice-i18n-en-US libreoffice-i18n-de

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		n )

		;;
	esac

	sleep 1

	# Install GIMP + Inkscape

	read -p "Do you want to install GIMP and Inkscape? (y/N) " gimpinkscape
	case $gimpinkscape in
		y )

		echo "\n${BLUE}Install GIMP and Inkscape...${DEFAULT}\n"

		xbps-install inkscape gimp

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		n )

		;;
	esac

	sleep 1

	# Install QEMU + Virt Manager

	read -p "Do you want to install QEMU and Virt Manager? (y/N) " qemuvirt
	case $qemuvirt in
		y )

		echo "\n${BLUE}Install QEMU and Virt Manager...${DEFAULT}\n"

		xbps-install qemu virt-manager libvirt

		echo "\n${BLUE}Enable libvirtd service...${DEFAULT}\n"

		if [ -L /var/service/libvirtd ]; then
			echo "\nService ${GREEN}libvirtd ${DEFAULT}already exist. Continue.\n"
		else
			ln -sv /etc/sv/libvirtd /var/service
			echo "\n${GREEN}Done${DEFAULT}\n"
		fi

		;;

		n )

		;;
	esac

	sleep 1

	# Install a Terminal emulator

	echo "\n${BLUE}Install a Terminal emulator...${DEFAULT}\n"
	echo "Possible (type in number): \n
	- 1 Alacritty
	- 2 xterm
	- 3 LXTerminal
	- 4 Yakuake
	- 5 Sakura
	- 0 I take the given one\n"

	read -p "What terminal emulator do you want? " terminal
	case $terminal in
		1 ) 

		echo "\n${BLUE}Install Alacritty...${DEFAULT}\n"

		xbps-install alacritty alacritty-terminfo

		echo "\n${GREEN}Done${DEFAULT}\n"
			
		;;
		
		2 ) 

		echo "\n${BLUE}Install xterm...${DEFAULT}\n"

		xbps-install xterm

		echo "\n${GREEN}Done${DEFAULT}\n"
			
		;;
		
		3 ) 
		
		echo "\n${BLUE}Install LXTerminal...${DEFAULT}\n"

		xbps-install lxterminal

		echo "\n${GREEN}Done${DEFAULT}\n"
			
		;;

		4 )
		
		echo "\n${BLUE}Install Yakuake...${DEFAULT}\n"

		xbps-install yakuake

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		5 )
		
		echo "\n${BLUE}Install Sakura...${DEFAULT}\n"

		xbps-install sakura

		echo "\n${GREEN}Done${DEFAULT}\n"

		;;

		0 )

		;;
	esac

	sleep 1

	# Enable required services

	echo "\n${BLUE}Enable required services...${DEFAULT}\n"

	echo "\n${BLUE}Enable D-Bus...${DEFAULT}\n"

	xbps-install -y dbus

	if [ -L /var/service/dbus ]; then
		echo "\nService ${GREEN}dbus ${DEFAULT}already exist. Continue.\n"
	else
		ln -s /etc/sv/dbus /var/service
		echo "\n${GREEN}Done${DEFAULT}\n"
	fi

	echo "\n${BLUE}Enable elogind...${DEFAULT}\n"

	xbps-install -y elogind

	if [ -L /var/service/elogind ]; then
		echo "\nService ${GREEN}elogind ${DEFAULT}already exist. Continue.\n"
	else
		ln -s /etc/sv/elogind /var/service
		echo "\n${GREEN}Done${DEFAULT}\n"
	fi

	echo "\n${BLUE}Enable Polkit...${DEFAULT}\n"

	if [ -L /var/service/polkitd ]; then
		echo "\nService ${GREEN}polkitd ${DEFAULT}already exist. Continue.\n"
	else
		ln -s /etc/sv/polkitd /var/service
		echo "\n${GREEN}Done${DEFAULT}\n"
	fi

	;;

	h )

	;;
esac

sleep 1

# Configure Cron

echo "\n${BLUE}Configure Cron...${DEFAULT}\n"
echo "\nInstall cronie...\n"

xbps-install -y cronie

echo "\n${BLUE}Enable cronie service...${DEFAULT}\n"

if [ -L /var/service/cronie ]; then
	echo "\nService ${GREEN}cronie ${DEFAULT}already exist. Continue.\n"
else
	ln -sv /etc/sv/cronie /var/service
	echo "\n${GREEN}Done${DEFAULT}\n"
fi

sleep 1

# Configure Audio

read -p "Do you want to install PulseAudio for audio? (y/N) " pulseaudio
case $pulseaudio in
	y )

	echo "\n${BLUE}Install PulseAudio...${DEFAULT}\n"

	xbps-install pulseaudio pulseaudio-utils pulsemixer alsa-plugins-pulseaudio \
		pavucontrol

	echo "\n${GREEN}Done${DEFAULT}\n"

	;;

	n )

	;;
esac

sleep 1

# Configure Network Management

echo "\n${BLUE}Configure Network Management...${DEFAULT}\n"
echo "\nPossible (type in number): \n
- 1 Network Manager
- 2 Connman
- 0 None\n"

read -p "Which Network Management tool do you want to use? " netmngt
case $netmngt in
	1 )

	echo "\n${BLUE}Install Network Manager...${DEFAULT}\n"

	xbps-install NetworkManager NetworkManager-openvpn NetworkManager-openconnect \
			NetworkManager-vpnc NetworkManager-l2tp
	
	echo "\n"

	read -p "Do you want to integrate Network Manager into a graphical environment? (y/N) " nmapplet
	case $nmapplet in
			y ) 

			echo "\n${BLUE}Install Network Manager applet...${DEFAULT}\n"

			xbps-install network-manager-applet
					
			;;

			n )

			;;
	esac

	echo "\n${BLUE}Enable Network Manager service...${DEFAULT}\n"

	if [ -L /var/service/NetworkManager ]; then
		echo "\nService ${GREEN}NetworkManager ${DEFAULT}already exist. Continue.\n"
	else
		ln -sv /etc/sv/NetworkManager /var/service
		echo "\n${GREEN}Done${DEFAULT}\n"
	fi

	;;

	2 )

	echo "\n${BLUE}Install Connman...${DEFAULT}\n"

	xbps-install connman connman-ncurses

	echo "\n${BLUE}Enable Connman service...${DEFAULT}\n"

	if [ -L /var/service/connmand ]; then
		echo "\nService ${GREEN}connmand ${DEFAULT}already exist. Continue.\n"
	else
		ln -sv /etc/sv/connmand /var/service
		echo "\n${GREEN}Done${DEFAULT}\n"
	fi

	;;

	0 )

	;;
esac

sleep 1

# Configure Bluetooth

read -p "Do you want to use Bluetooth? (y/N) " bluetooth
case $bluetooth in
	y )

	echo "\n${BLUE}Install BlueZ...${DEFAULT}\n"

	xbps-install bluez

	echo "\n"

	read -p "Do you want to integrate Bluetooth into a graphical environment? (y/N) " blueman
	case $blueman in
			y )

			echo "\n${BLUE}Install Blueman...${DEFAULT}\n"

			xbps-install blueman

			;;

			n )

			;;
	esac

	echo "\n${BLUE}Enable Bluetooth service...${DEFAULT}\n"

	if [ -L /var/service/bluetoothd ]; then
		echo "\nService ${GREEN}bluetoothd ${DEFAULT}already exist. Continue.\n"
	else
		ln -sv /etc/sv/bluetoothd /var/service
		echo "\n${GREEN}Done${DEFAULT}\n"
	fi

	;;

	n )

	;;
esac

sleep 1

# Configure Printing support

read -p "Do you want to use printers? (y/N) " printer
case $printer in
	y )

	echo "\n${BLUE}Install CUPS and Tools...${DEFAULT}\n"

	xbps-install cups cups-pk-helper cups-filters foomatic-db foomatic-db-engine

	echo "\n"

	read -p "Do you want to install a graphical printer program? (y/N) " printergui
	case $printergui in
			y )

			echo "\n${BLUE}Install system-config-printer...${DEFAULT}\n"

			xbps-install system-config-printer

			;;

			n )

			;;
	esac

	echo "\n${BLUE}Enable CUPS service...${DEFAULT}\n"

	if [ -L /var/service/cupsd ]; then
		echo "\nService ${GREEN}cupsd ${DEFAULT}already exist. Continue.\n"
	else
		ln -sv /etc/sv/cupsd /var/service
		echo "\n${GREEN}Done${DEFAULT}\n"
	fi

	;;

	n )

	;;
esac

sleep 1

# Configure Notebook Power Saving

read -p "Do you want to install TLP for power saving (Notebooks only)? (y/N) " nb_power
case $nb_power in
	y )

	echo "\n${BLUE}Install TLP and PowerTop...${DEFAULT}\n"

	xbps-install tlp tlp-rdw powertop

	echo "\n${BLUE}Enable TLP service...${DEFAULT}\n"

	if [ -L /var/service/tlp ]; then
		echo "\nService ${GREEN}tlp ${DEFAULT}already exist. Continue.\n"
	else
		ln -sv /etc/sv/tlp /var/service
		echo "\n${GREEN}Done${DEFAULT}\n"
	fi

	;;

	n )

	;;
esac

sleep 1

# Configure the Display manager

echo "\n${BLUE}Check if a display manager exist. If yes, enable it.${DEFAULT}\n"

if [ -f /usr/bin/lightdm ]; then
	ln -sv /etc/sv/lightdm /var/service
elif [ -f /usr/bin/sddm ]; then
	ln -sv /etc/sv/sddm /var/service
elif [ -f /usr/bin/gdm ]; then
	ln -sv /etc/sv/gdm /var/service
elif [ -f /usr/bin/slim ]; then
	ln -sv /etc/sv/slim /var/service
elif [ -f /usr/bin/emptty ]; then
	ln -sv /etc/sv/emptty /var/service
fi

echo "\n${BLUE}Finished.${DEFAULT}\n"
