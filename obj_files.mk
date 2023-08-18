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
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/errno.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/file_io.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/FILE_POS.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/locale.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/mbstring.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/mem.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/mem_funcs.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/misc_io.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/printf.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/rand.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/scanf.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/signal.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/string.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/strtold.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/strtoul.o \
	$(BUILD_DIR)/libs/MSL_C/asm/PPC_EABI/uart_console_io.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/wchar_io.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/e_acos.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/e_asin.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/e_atan2.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/e_log.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/e_log10.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/e_pow.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/e_rem_pio2.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/k_cos.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/k_rem_pio2.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/k_sin.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/k_tan.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/s_atan.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/s_ceil.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/s_copysign.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/s_cos.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/s_floor.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/s_frexp.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/s_ldexp.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/s_modf.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/s_nextafter.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/s_sin.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/s_tan.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/w_acos.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/w_asin.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/w_atan2.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/w_log.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/w_log10.o \
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common_Embedded/Math/Double_precision/w_pow.o \
	$(BUILD_DIR)/libs/MSL_C/asm/PPC_EABI/math_ppc.o

EXTAB_O_FILES := $(BUILD_DIR)/asm/extab_.o

EXTABINDEX_O_FILES := $(BUILD_DIR)/asm/extabindex_.o

TEXT_O_FILES := $(BUILD_DIR)/asm/text.o

RODATA_O_FILES := $(BUILD_DIR)/asm/rodata.o

DATA_O_FILES := $(BUILD_DIR)/asm/data.o

BSS_O_FILES := $(BUILD_DIR)/asm/bss.o

SDATA_O_FILES := $(BUILD_DIR)/asm/sdata.o

SBSS_O_FILES := $(BUILD_DIR)/asm/sbss.o

SDATA2_O_FILES := $(BUILD_DIR)/asm/sdata2.o
