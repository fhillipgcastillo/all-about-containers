# step 1
# Needs to create a directoey to apply the new root
# option 1: for use of Dockerfile and auto scripts
dirname=$1
mkdir $dirname

# option 2: for manual execution
# echo Directory Name  && read dirname && mkdir $dirname
# echo echo Directory Name > steps.sh \&\& echo read dirname >> steps.sh \&\& echo mkdir \$dirname >> steps.sh \&\& echo chmod \+x steps.sh

# step 2 create secret
# I created a secret file just to hqve something 
echo secret info > secret.txt 

# step 3
# debbodtrap the new directory
# debootstrap --variant=minbase <distro> <path-dir>
debootstrap --variant=minbase bionic $dirname

# step 4 unshare and chroot
unshare --mount --uts --ipc --net --pid --fork --user --map-root-user chroot $dirname bash 

# step 5 mount procceses and system for isolation
mount -t proc none /proc # process namespace
mount -t sysfs none /sys # filesystem
mount -t tmpfs none /tmp # filesystem


