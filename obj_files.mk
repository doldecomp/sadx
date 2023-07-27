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
	$(BUILD_DIR)/libs/Runtime/asm/New.o \
	$(BUILD_DIR)/libs/Runtime/asm/NewMore.o \
	$(BUILD_DIR)/libs/Runtime/asm/NMWException.o \
	$(BUILD_DIR)/libs/Runtime/asm/runtime.o \
	$(BUILD_DIR)/libs/Runtime/asm/__init_cpp_exceptions.o \
	$(BUILD_DIR)/libs/Runtime/asm/Gecko_ExceptionPPC.o \
	$(BUILD_DIR)/libs/Runtime/asm/GCN_mem_alloc.o

MSL_C_O_FILES := \
	$(BUILD_DIR)/libs/MSL_C/asm/PPC_EABI/abort_exit.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/alloc.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/ansi_files.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/ansi_fp.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/buffer_io.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/ctype.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/direct_io.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/file_io.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/FILE_POS.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/locale.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/mb_string.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/mem.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/mem_funcs.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/misc_io.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/printf.o

EXTAB_O_FILES := $(BUILD_DIR)/asm/extab_.o

EXTABINDEX_O_FILES := $(BUILD_DIR)/asm/extabindex_.o

TEXT_O_FILES := $(BUILD_DIR)/asm/text.o

RODATA_O_FILES := $(BUILD_DIR)/asm/rodata.o

DATA_O_FILES := $(BUILD_DIR)/asm/data.o

BSS_O_FILES := $(BUILD_DIR)/asm/bss.o

SDATA_O_FILES := $(BUILD_DIR)/asm/sdata.o

SBSS_O_FILES := $(BUILD_DIR)/asm/sbss.o

SDATA2_O_FILES := $(BUILD_DIR)/asm/sdata2.o
