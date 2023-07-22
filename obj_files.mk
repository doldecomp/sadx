INIT_O_FILES := \
	$(BUILD_DIR)/libs/Runtime/asm/__mem.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/mem_TRK.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/__exception.o \
	$(BUILD_DIR)/libs/Dolphin/OS/asm/__start.o \
	$(BUILD_DIR)/libs/Dolphin/OS/asm/__ppc_eabi_init.o

SADX_O_FILES := \
	$(BUILD_DIR)/asm/main.o \
	$(BUILD_DIR)/asm/code_0.o

RUNTIME_O_FILES := \
	$(BUILD_DIR)/libs/Runtime/asm/__va_arg.o \
	$(BUILD_DIR)/libs/Runtime/asm/global_destructor_chain.o \
	$(BUILD_DIR)/libs/Runtime/asm/unknown_0.o \
	$(BUILD_DIR)/libs/Runtime/asm/NMWException.o \
	$(BUILD_DIR)/libs/Runtime/asm/unknown_1.o \
	$(BUILD_DIR)/libs/Runtime/asm/runtime.o \
	$(BUILD_DIR)/libs/Runtime/asm/__init_cpp_exceptions.o \
	$(BUILD_DIR)/libs/Runtime/asm/unknown_2.o

EXTAB_O_FILES := $(BUILD_DIR)/asm/extab_.o

EXTABINDEX_O_FILES := $(BUILD_DIR)/asm/extabindex_.o

TEXT_O_FILES := $(BUILD_DIR)/asm/text.o

RODATA_O_FILES := $(BUILD_DIR)/asm/rodata.o

DATA_O_FILES := $(BUILD_DIR)/asm/data.o

BSS_O_FILES := $(BUILD_DIR)/asm/bss.o

SDATA_O_FILES := $(BUILD_DIR)/asm/sdata.o

SBSS_O_FILES := $(BUILD_DIR)/asm/sbss.o

SDATA2_O_FILES := $(BUILD_DIR)/asm/sdata2.o
