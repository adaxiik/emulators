# Android
- Download android from http://www.android-x86.org/download
- `$ ./qemu-install.sh ./<android iso> ./<android image>`
- `$ ./qemu-run.sh ./<android image>`

# Instalation 
- Create partition
- Use GPT - yes
- Format to ext4
- Install GRUB - yes
- Convert to MBR - yes
- Install with read-write

# Native bridge
- Enable native bridge in options 
- Download libhoudini from `http://dl.android-x86.org/houdini.php?v=9_y` (for android 9)
- rename it to houdini9_y.sfs
- move it to system/etc
- run `$ enable_native_bridge`