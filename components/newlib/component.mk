
ifdef CONFIG_NEWLIB_NANO_FORMAT
LIBC_PATH := $(COMPONENT_PATH)/lib/libc_nano.a
else
LIBC_PATH := $(COMPONENT_PATH)/lib/libc.a
endif

LIBM_PATH := $(COMPONENT_PATH)/lib/libm.a

COMPONENT_ADD_LDFLAGS += $(LIBC_PATH) $(LIBM_PATH)

COMPONENT_ADD_LINKER_DEPS := $(LIBC_PATH) $(LIBM_PATH)

COMPONENT_ADD_INCLUDEDIRS := platform_include include
