sudo raspi-config
ip a s
sudo apt install network-manager
sudo su
exit
ip a s
lsblk
dir /mnt
wifi-menu
sudo wifi-menu
sudo apt update && sudo apt upgrade
sudo apt install networkmanager
sudo apt install NetworkManager
sudo apt install dnsutils
sudo apt install u~
sudo apt install wifi-menu
sudo raspi-config
ip a s
sudo apt install ssh
systemctl status ssh
systemctl status sshd
sudo systemctl enable ssh~
ip a s
sudo systemctl enable ssh
systemctl status sshd
sudo systemctl start ssh
sudo raspi-config
sudo raspi-config~
passwd
sudo su
sudo useradd 
groups
dir
ip a s
dir --all
sudo vim .bashrc
sudo apt install vim
sudo apt install git docker dnsutils
sudo usermod -aG docker asura
dir
groups
sudo usermod -aG docker asura
sudo systemctl status docker
sudo reboot now
ip a s
sudo raspi-config
dir
ip a s
lsblk
groups
sudo apt install docker
docker --help
docker
sudo docker
sudo apt install docker-compose
sudo docker
docker
dir
docker ls
docker image
docker ls
docker ls --help
docker images ls
groups
sudo usermod -aG docker
sudo usermod -aG docker asura
docker images ls
sudo reboot now
docker
docker images ls
dir
docker-compose
dir
dir --asll
dir --all
vim .bashrc
exit
dir
vim .bashrc
dir
dir --all
mkdir -p ~/.vim
dir
vim ~/.vim/vimrc
dir
dir --all
vim .bashrc
dir
vim .bashrc
dir
dir --all
dir
vim .vim/vimrc
vim .bashrc
dir
dir --all
mkdir -p personal/dotfiles/bashrc
dir
vim personal/dotfiles/bashrc/alias
source ~/.bashrc
reload
so
vim ~/.bashrc
reload
source ~/.bashrc
reload
so
vim ~/.bashrc
so
reload
source ~/.bashrc
so
dir
vim ~/.bashrc
echo $BASHRC_PERSONAL
dir personal/dotfiles/bashrc/alias 
dir
cd personal/dotfiles/bashrc/
dir
cd ..
dir
mv bashrc bash
cd ~
dir personal/dotfiles/bash/alias 
source ~/.bashrc
dir
ls
dir --color
dir
vim personal/dotfiles/bash/
so ~/.bashrc
dir
ls
vim .bashrc
dir
neofetch
sudo apt install neofetch
dir
git
dir
sudo apt install smbd
sudo apt install samba
sudo apt install samba cifs-utils
groups
sudo systemctl status samba
sudo systemctl status smbd
sudo vim /etc/samba/smb.conf 
sudo cp /etc/samba/smb.conf etc/samba/smb.conf.bak
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.bak
dir
sudo vim /etc/samba/smb.conf
sudo reboot now
sudo vim /etc/samba/smb.conf
lsblk
sudo mount /mnt/HDD500GB_1
sudo mount /dev/sdb1 /mnt/HDD500GB_1
sudo mkdir -p /mnt/HDD500GB_1 && sudo mount /dev/sdb1 /mnt/HDD500GB_1
sudo mkdir -p /mnt/HDD500GB_2 && sudo mount /dev/sdb2 /mnt/HDD500GB_2
sudo mkdir -p /mnt/HDD500GB_2 && sudo mount /dev/sdc1 /mnt/HDD500GB_2
dir /mnt
dir /mnt/HDD500GB_
dir /mnt/HDD500GB_1
dir /mnt/HDD500GB_2
dir
cd Desktop
dir
mkdir -p Desktop/servers
cd Desktop/servers
dir
sudo vim /etc/samba/smb.conf
vim /etc/samba/smb.conf
sudo vim /etc/samba/smb.conf
genfstab
sudo apt install genfstab
sudo apt install arch-install-scripts
sudo apt update
sudo apt install arch-install-scripts
genfstab -U /mnt/HDD500GB_1
genfstab -U /mnt/HDD500GB_2
sudo genfstab -U /mnt/HDD500GB_1 >> /etc/fstab 
sudo genfstab -U /mnt/HDD500GB_1 | sudo tee -a /etc/fstab 
sudo genfstab -U /mnt/HDD500GB_2 | sudo tee -a /etc/fstab 
sudo vim /etc/fstab
dir
free -h
df -h
lsblk
df -h
lsblk
parted --help
parted resizepart
sudo parted resizepart 
lsblk
sudo fdisk -l
lsblk
sudo fallocate -l 4.0GiB /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
echo -e "# /swapfile" | sudo tee -a /etc/fstab && echo -e "/swapfile swap swap defaults 0 0" | sudo tee -a /etc/fstab
sudo vim /etc/fstab
sudo swapon /swapfile
free -h
sudo systemctl restart smbd
smbclient
smbpasswd
smbpasswd --help
smbd
smbd --help
smbpasswd --help
smbpasswd -x
smbpasswd -L
sudo smbpasswd -L
man smbd
man smbpassw
sudo vim /etc/samba/smb.conf
sudo systemctl restart smbd
sudo smbpasswd -a Asura
groups
dir /home
vim /etc/samba/smb.conf
sudo vim /etc/samba/smb.conf
sudo systemctl restart smbd
dir /mnt/HDD500GB_
dir /mnt/HDD500GB_1
ls /mnt/HDD500GB_1
ls /mnt/HDD500GB_2
sudo vim /etc/samba/smb.conf
sudo systemctl restart smbd
dir
ip  as
ip a s
sudo systemctl restart smbd
ip a s
dir
dir /mnt/HDD500GB_1
dir /mnt/HDD500GB_12
dir /mnt/HDD500GB_2
lsblk
sudo reboot now
ip a s
lsblk
vim /etc/fstab
cat /etc/fstab
blkid /dev/sdb1
blkid /dev/sdc1
free -h
sudo vim /etc/fstab
dir /mnt/HDD500GB_
sudo vim /etc/fstab
dir /mnt/HDD500GB_1
dir /mnt/HDD500GB_2
sudo vim /etc/fstab
sudo reboot now
lsblk
dir /mnt/HDD500GB_
dir /mnt/HDD500GB_1
dir /mnt/HDD500GB_2
sudo systemctl status smbd
sudo systemctl status ssh
sudo systemctl status docker
exit
systemctl status xl2tpd
systemctl status ipsec
ip a s
lsblk
exit
ip a s
systemctl status ssh
systemctl status smbd
free -h
while true; do free -h; done
while true; do free -h; sleep 1; done
free -h
ip a s
df -h
dir
vim ~/.vim/vimrc
ip a s
dir
vim ~/.vim/vimrc
sudo apt install tmux
df -h
ip a s
sudo shutdown now
dir
cd Desktop
dir
cd /mnt
dir
sudo smbpasswd --help
sudo smbpasswd -a secret
sudo useradd --help
sudo useradd --no-create-home --disabled-password --disabled-login secret
sudo adduser --no-create-home --disabled-password --disabled-login secret
users
cat /etc/user
groups
sudo adduser --no-create-home --disabled-password --disabled-login -g sudo -G users secret
sudo adduser --no-create-home --disabled-password --disabled-login --group sudo -G users secret
sudo adduser --no-create-home --disabled-password --disabled-login secret
passwd secret
sudo passwd secret
dir
cat /etc/shadow
sudo cat /etc/shadow
dir
vim /etc/samba/smb.conf
sudo vim /etc/samba/smb.conf
dir
sudo service smbd force-reload
sudo systemctl status smbd
sudo smbpasswd -a secret
sudo service smbd force-reload
cd /mnt/HDD500GB_
cd /mnt/HDD500GB_2
sudo vim /etc/samba/smb.conf
dir
sudo vim /etc/samba/smb.conf
sudo mkdir -p secretfldr
sudo service smbd force-reload
dir
sudo vim /etc/samba/smb.conf
dir
ls -la
sudo chown asura:asura secretfldr/
dir
ls -la
df -h
dir
ls -la
sudo chown secret:secret secretfldr/
ls -la
sudo service smbd force-reload
sudo vim /etc/samba/smb.conf
sudo service smbd force-reload
ls -la
chmod 770 secretfldr/
sudo chmod 770 secretfldr/
ls -la
dir
dir General/
df -h
dir
cat /etc/host
cat /etc/hosts
cat /etc/hostname
dir
ip a s
dir /etc/netplan
hostname -I
vim /etc/dhcp
vim /etc/dhcpcd.conf 
sudo reboot now
hostname -I
df -h
exit
hostname -I
hostname
vim /etc/dhcpcd.conf 
sudo reboot now
