# !/bin/bash
# step 1
# Needs to create a directoey to apply the new root
# option 1: for use of Dockerfile and auto scripts
# dirname=./sec-root/
# mkdir ./sec-root/
# step 2 create secret
# I created a secret file just to hqve something 
# echo secret info > secret.txt
# step 3
# debbodtrap the new directory
# debootstrap --variant=minbase <distro> <path-dir>
debootstrap --variant=minbase bionic ./sec-root/
# step 4 unshare and chroot
unshare --mount --uts --ipc --net --pid --fork --user --map-root-user chroot ./sec-root/ bash 