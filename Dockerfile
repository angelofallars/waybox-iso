FROM archlinux:latest

RUN pacman -Syyu --noconfirm --needed archiso mkinitcpio-archiso archlinux-keyring git wget squashfs-tools

# # Clone the ArcoLinux mirrorlist
# RUN wget https://raw.githubusercontent.com/arcolinux/arcolinux-mirrorlist/master/etc/pacman.d/arcolinux-mirrorlist \
#          -O /etc/pacman.d/arcolinux-mirrorlist
# 
# # Add the ArcoLinux repos
# RUN wget https://raw.githubusercontent.com/arcolinux/arcolinuxl-iso/master/archiso/pacman.conf \
#          -O /etc/pacman.conf
# 
# RUN pacman-key --init
# RUN pacman-key --populate
# 
# # Get the ArcoLinux keyring
# RUN wget https://github.com/arcolinux/arcolinux_repo/raw/main/x86_64/arcolinux-keyring-20230919-6-any.pkg.tar.zst
# RUN pacman -U --noconfirm arcolinux-keyring-20230919-6-any.pkg.tar.zst
# 
# RUN pacman -Syyu

COPY . /waybox-iso

WORKDIR /waybox-iso/installation-scripts
CMD ./30-build-the-iso-the-first-time.sh
