 set -xe

HDA_IMAGE="$1"

shift

qemu-system-x86_64 -enable-kvm \
                   -m 2048 -smp 3 -cpu host \
                   -device AC97 \
                   -device e1000,netdev=net0 \
                   -netdev user,id=net0 \
                   -device virtio-vga-gl\
                   -display gtk,gl=on \
                   -hda "$HDA_IMAGE" \
                   -serial mon:stdio \
                   "$@"
