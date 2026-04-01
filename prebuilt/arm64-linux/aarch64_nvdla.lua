CPU = {
    library = "libqbox-nvdla.so",
    extra_arguments = "-machine virt -cpu cortex-a57 -machine type=virt -nographic -smp 1 -m 1024 -kernel /Users/georgelin/nvdla/sw/prebuilt/arm64-linux/images/linux-4.13.3/Image --append \"root=/dev/vda\" -drive file=/Users/georgelin/nvdla/sw/prebuilt/arm64-linux/images/linux-4.13.3/rootfs.ext4,if=none,format=raw,id=hd0 -device virtio-blk-device,drive=hd0"
}

ram = {
    size = 1048576,
    target_port = {
        base_addr = 0xc0000000,
        high_addr = 0xffffffff
    }
}

nvdla = {
    irq_number = 176,
    csb_port = {
        base_addr = 0x10200000,
        high_addr = 0x1021ffff
    }
}
