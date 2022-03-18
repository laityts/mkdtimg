APP_PLATFORM := android-16
APP_PIE      := true
LOCAL_PATH   := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE            := mkdtimg
LOCAL_MODULE_FILENAME   := mkdtimg
LOCAL_SRC_FILES         := ../mkdtimg.c ../mkdtimg_cfg_create.c ../mkdtimg_core.c ../mkdtimg_create.c ../mkdtimg_dump.c ../dt_table.c ../libfdt/acpi.c ../libfdt/fdt.c ../libfdt/fdt_addresses.c ../libfdt/fdt_check.c ../libfdt/fdt_empty_tree.c ../libfdt/fdt_overlay.c ../libfdt/fdt_ro.c ../libfdt/fdt_rw.c ../libfdt/fdt_strerror.c ../libfdt/fdt_sw.c ../libfdt/fdt_wip.c ../sysdeps/libufdt_sysdeps_posix.c
LOCAL_C_INCLUDES        := $(LOCAL_PATH)/../libfdt \
                                $(LOCAL_PATH)/../sysdeps \
                                $(LOCAL_PATH)/../sysdeps/include
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../libfdt \
                                   $(LOCAL_PATH)/../sysdeps
LOCAL_CFLAGS            := -Os
LOCAL_LDFLAGS           := -static
include $(BUILD_EXECUTABLE)