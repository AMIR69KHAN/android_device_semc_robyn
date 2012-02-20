TARGET_SPECIFIC_HEADER_PATH := device/semc/shakira/include

USE_CAMERA_STUB := true
# Fake building with eclair cam
BOARD_USES_ECLAIR_LIBCAMERA := true
BOARD_USES_ECLAIR_LIBAUDIO := true
BOARD_USE_FROYO_LIBCAMERA := true

# ARMv6-compatible processor rev 5 (v6l)
TARGET_BOARD_PLATFORM := msm7x27
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true

TARGET_BOOTLOADER_BOARD_NAME := shakira
TARGET_OTA_ASSERT_DEVICE := E15i,E15a,E16i,E16a,shakira
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_BOOTLOADER_BOARD_NAME=shakira
BOARD_USE_SCREENCAP := true

TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true
TARGET_USE_SOFTWARE_AUDIO_AAC := true

COPYBIT_MSM7K := true

## to enable the GPS HAL
#BOARD_GPS_LIBRARIES := libgps librpc
BOARD_USES_QCOM_HARDWARE := true

BOARD_USES_QCOM_LIBS := true
#BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := shakira
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_CUSTOM_HCIATTACH := true

BOARD_EGL_CFG := device/semc/shakira/prebuilt/egl.cfg

BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WLAN_DEVICE := wl1271
BOARD_SOFTAP_DEVICE := wl1271
WPA_SUPPLICANT_VERSION := VER_0_6_X
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/tiwlan_drv.ko
WIFI_DRIVER_MODULE_NAME := tiwlan_drv
WIFI_FIRMWARE_LOADER := wlan_loader
WIFI_EXT_MODULE_PATH := /system/lib/modules/sdio.ko
WIFI_EXT_MODULE_NAME := sdio

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/vold/179:1
BOARD_SDEXT_DEVICE := /dev/block/vold/179:2
#BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun0/file"

BOARD_CAMERA_NO_AUTOFOCUS:=true
BOARD_CUSTOM_BLUEDROID := ../../../device/semc/shakira/bluedroid.c
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_GRALLOC_BUFFERS
COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_PIXEL_FORMAT_YV12
COMMON_GLOBAL_CFLAGS += -DBOARD_GL_OES_EGL_IMG_EXTERNAL_HACK
COMMON_GLOBAL_CFLAGS += -D_INTERNAL_BINDER_PARCEL_ -DREFRESH_RATE=60

WITH_JIT := false
ENABLE_JSC_JIT:= false
JS_ENGINE := v8

BOARD_KERNEL_CMDLINE := console=null
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 0x00000800
BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1

TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_GENERIC_AUDIO := false

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
#TARGET_PREBUILT_KERNEL := device/semc/shakira/kernel
#TARGET_NO_KERNEL := true

WITH_DEXPREOPT := false

BOARD_CUSTOM_BOOTIMG_MK := device/semc/msm7x27-common/custombootimg.mk
TARGET_RECOVERY_PRE_COMMAND := "touch /cache/recovery/boot;sync;"
BOARD_HAS_BOOT_RECOVERY := true
BOARD_HAS_SMALL_RECOVERY := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_RECOVERY_CHARGEMODE := false
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_LDPI_RECOVERY := true
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/semc/msm7x27-common/recovery/recovery_ui.c

# A custom ota package maker for a device without a boot partition
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/semc/msm7x27-common/releasetools/semc_ota_from_target_files

# Prelinks
PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/device/semc/msm7x27-common/prelink-linux-arm-x8.map

