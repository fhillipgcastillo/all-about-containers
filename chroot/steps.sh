# step 1
echo Directory Name  && read dirname && mkdir $dirname
# echo echo Directory Name > steps.sh \&\& echo read dirname >> steps.sh \&\& echo mkdir \$dirname >> steps.sh \&\& echo chmod \+x steps.sh

# step 2 bin and bash for xhroot
cd $dirname && ldd /bin/bash && mkdir bin && mkdir lib{,64} && cp -r /bin/* bin/ && cp -r /lib/* lib/ && cp -r /lib64/* lib64/
# echo cd \$dirname \&\& ldd /bin/bash \&\& mkdir bin \&\& mkdir lib{,64} \&\& cp -r /bin/* bin/ \&\& cp -r /lib/* lib/ >> steps.sh \&\& echo cp -r /lib64/* /lib64/ >> steps.sh

# step 3 chroot
echo secret info > secret.txt
chroot . bash
# echo secret info > secret.txt && chroot . bash