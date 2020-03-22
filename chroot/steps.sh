# step 1
# Needs to create a directoey to apply the new root
# option 1: for use of Dockerfile and auto scripts
dirname=$1
mkdir $dirname

# option 2: for manual execution
echo Directory Name  && read dirname && mkdir $dirname
# echo echo Directory Name > steps.sh \&\& echo read dirname >> steps.sh \&\& echo mkdir \$dirname >> steps.sh \&\& echo chmod \+x steps.sh

# step 2 
#  to copy qll executable bins files and dira with the required libs to the new directory
cd $dirname && ldd /bin/bash && mkdir bin && mkdir lib{,64} && cp -r /bin/* bin/ && cp -r /lib/* lib/ && cp -r /lib64/* lib64/
# echo cd \$dirname \&\& ldd /bin/bash \&\& mkdir bin \&\& mkdir lib{,64} \&\& cp -r /bin/* bin/ \&\& cp -r /lib/* lib/ >> steps.sh \&\& echo cp -r /lib64/* /lib64/ >> steps.sh

# step 3 chroot
# I created a secret file just to hqve something and execute the chroot <dir-path> <command> to change the root directory and execute bash i side it
echo secret info > secret.txt && chroot . bash
# echo secret info > secret.txt && chroot . bash