## Dockerfile
Is a ubuntu bionix version container, containing debootstrap to unshare the chrooted directories

##debootstrap
debootstrap is a tool to create debian core based directories

debootstrap --variant=minbase bionic /fhillip-root

Usage: debootstrap [OPTION]... <suite> <target> [<mirror> [<script>]]
Bootstrap a Debian base system into a target directory.

