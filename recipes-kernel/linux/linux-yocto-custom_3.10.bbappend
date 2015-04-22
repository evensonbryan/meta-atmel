FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:${THISDIR}/files/:"
RREPLACES_kernel-image = "kernel-image (<= 3.10) kernel-image-3.10.0-yocto-standard"
RCONFLICTS_kernel-image = "kernel-image (<= 3.10) kernel-image-3.10.0-yocto-standard"
PR = "r7"

SRC_URI_append_at91sam9x5ek = " \
    file://${MACHINE}/${KBRANCH}/defconfig \
    file://${MACHINE}/${KBRANCH}/UBI_config.cfg \
    file://${MACHINE}/${KBRANCH}/0001-AT91-rtc-Enable-RTC-in-device-tree.patch \
    file://${MACHINE}/${KBRANCH}/0002-AT91-usart-Add-USART3-to-AT91SAM9x5-device-tree.patch \     
    file://${MACHINE}/${KBRANCH}/0003-rtc-ACKPUD-int.patch \
    "
    
# Override SRCREV to point to a different commit in a bbappend file to
# build a different release of the Linux kernel.
# latest as of 2014-12-09 5d5b332821753d616e65da6237f0a3330e59b98f
SRCREV="5d5b332821753d616e65da6237f0a3330e59b98f"

