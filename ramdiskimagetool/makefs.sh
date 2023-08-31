#!/bin/bash
CUR_DATE=$(date +%Y%m%d)
CUR_TIME=$(date +%H%M%S)
host_name=$(hostname)
RAW_SIZE=262144  #256M
CUR_DIR=$(pwd)
USER_DIR=${CUR_DIR}/busybox_install
OUTPUT_DIR=${CUR_DIR}/IMX6Q_RFS_${CUR_DATE}_${CUR_TIME}
MOUNT_DIR=${OUTPUT_DIR}/IMX6Q_RFS_IMAGE_MOUNT_${CUR_DATE}_${CUR_TIME}
WORK_DIR=${CUR_DIR}/work_dir
final_compress_file=ramdisk.image
raw_image_file=ramdisk_${CUR_DATE}_${CUR_TIME}.image

build_date_rootfs()
{
    mkdir -p $OUTPUT_DIR || exit 1
    echo "Create $OUTPUT_DIR Directory !"
}

function make_rootfs_image()
{
    echo ""
    echo ""
    echo "###############################"
    echo "### start make rootfs image ###"
    echo "###############################"
    echo ""
        cd ${CUR_DIR}
    echo "### check ${WORK_DIR} ###"
    if [ ! -d ${WORK_DIR} ]; then
        echo " create work dir "
        mkdir -p ${WORK_DIR} || exit 1
    fi
    echo "### check user dir ###"
    if [ -d ${USER_DIR} ]; then
                echo "### create user sub dir in work dir ###"
                find ${USER_DIR} -type d > finddir
                        for file in $(cat finddir | awk -F "${USER_DIR}" '{print $2}')
                        do
                                mkdir -p ${WORK_DIR}/${file} || exit 1
                                #echo "create ${file}"
                        done
        fi
    rm -f finddir
    #build_date_rootfs

    echo "### copy ${USER_DIR} to ${WORK_DIR} ###"
    cp -af ${USER_DIR}/* ${WORK_DIR}/. || exit 1
    echo "### cppy ${WORK_DIR} to ${MOUNT_DIR} ###"
    cp -af ${WORK_DIR}/* ${MOUNT_DIR}/. || exit 1
    sync || exit 1
    echo "### umount ${MOUNT_DIR} ###"
    umount ${MOUNT_DIR} || exit 1
    echo "### gzip -9  ${raw_image_file}.gz ###"
    gzip -9 ${OUTPUT_DIR}/${raw_image_file} || exit 1
    echo "### make ${raw_image_file}.gz to ${final_compress_file} ###"
    ./mkimage -A arm -T ramdisk -d ${OUTPUT_DIR}/${raw_image_file}.gz ${OUTPUT_DIR}/${final_compress_file} || exit 1
    rm -rf ${MOUNT_DIR} || exit 1
    rm -rf ${WORK_DIR} || exit 1
}


function make_rootfs_raw_image()
{
    echo ""
    echo ""
    echo "###################################"
    echo "### start make rootfs rsw image ###"
    echo "###################################"
    echo ""
    build_date_rootfs
    if [ -d ${OUTPUT_DIR} ]; then
        mkdir -p ${MOUNT_DIR} || exit 1
    fi
    cd ${OUTPUT_DIR}
    echo "### dd if=/dev/zero of ${raw_image_file} bs=1024 count=${RAW_SIZE} ###"
    dd if=/dev/zero of=${raw_image_file} bs=1024 count=${RAW_SIZE} || exit 1
    echo "### mke2fs -F ${raw_image_file} -L ramdisk -b 1024 -m 0 ###"
    mke2fs -F ${raw_image_file} -L "ramdisk" -b 1024 -m 0 || exit 1
    tune2fs ${raw_image_file} -i 0 || exit 1
    chmod a+rwx ${raw_image_file} || exit 1
    echo "### mount ${raw_image_file} to ${MOUNT_DIR} ###"
    mount -o loop ${raw_image_file} ${MOUNT_DIR} || exit 1
    cd ${CUR_DIR}
}

make_rootfs_raw_image
make_rootfs_image
