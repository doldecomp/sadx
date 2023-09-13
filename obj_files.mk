INIT_O_FILES := \
	$(BUILD_DIR)/libs/Runtime/asm/__mem.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/mem_TRK_init.o \
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
	$(BUILD_DIR)/libs/MSL_C/asm/MSL_Common/float.o \
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

TRK_O_FILES := \
	$(BUILD_DIR)/libs/MetroTRK/asm/mainloop.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/nubevent.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/nubinit.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/msg.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/msgbuf.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/serpoll.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/usr_put.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/dispatch.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/msghndlr.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/support.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/mutex_TRK.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/notify.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/flush_cache.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/mem_TRK.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/targimpl.o \
	$(BUILD_DIR)/libs/MetroTRK/src/targsupp.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/dolphin_trk.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/mpc_7xx_603e.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/main_TRK.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/dolphin_trk_glue.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/targcont.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/target_options.o \
	$(BUILD_DIR)/libs/MetroTRK/asm/mslsupp.o

DOLPHIN_O_FILES := \
	$(BUILD_DIR)/libs/Dolphin/AI/asm/ai.o \
	\
	$(BUILD_DIR)/libs/Dolphin/AMCStubs/asm/AmcExi2Stubs.o \
	\
	$(BUILD_DIR)/libs/Dolphin/AR/asm/ar.o \
	$(BUILD_DIR)/libs/Dolphin/AR/asm/arq.o \
	\
	$(BUILD_DIR)/libs/Dolphin/AX/asm/AX.o \
	$(BUILD_DIR)/libs/Dolphin/AX/asm/AXAlloc.o \
	$(BUILD_DIR)/libs/Dolphin/AX/asm/AXAux.o \
	$(BUILD_DIR)/libs/Dolphin/AX/asm/AXCL.o \
	$(BUILD_DIR)/libs/Dolphin/AX/asm/AXOut.o \
	$(BUILD_DIR)/libs/Dolphin/AX/asm/AXSPB.o \
	$(BUILD_DIR)/libs/Dolphin/AX/asm/AXVPB.o \
	$(BUILD_DIR)/libs/Dolphin/AX/asm/AXProf.o \
	$(BUILD_DIR)/libs/Dolphin/AX/asm/AXComp.o \
	$(BUILD_DIR)/libs/Dolphin/AX/asm/DSPCode.o \
	\
	$(BUILD_DIR)/libs/Dolphin/AXFX/asm/reverb_hi.o \
	$(BUILD_DIR)/libs/Dolphin/AXFX/asm/reverb_std.o \
	$(BUILD_DIR)/libs/Dolphin/AXFX/asm/chorus.o \
	$(BUILD_DIR)/libs/Dolphin/AXFX/asm/delay.o \
	$(BUILD_DIR)/libs/Dolphin/AXFX/asm/axfx.o \
	\
	$(BUILD_DIR)/libs/Dolphin/BASE/asm/PPCArch.o \
	\
	$(BUILD_DIR)/libs/Dolphin/CARD/asm/CARDBios.o \
	$(BUILD_DIR)/libs/Dolphin/CARD/asm/CARDUnlock.o \
	$(BUILD_DIR)/libs/Dolphin/CARD/asm/CARDRdwr.o \
	$(BUILD_DIR)/libs/Dolphin/CARD/asm/CARDBlock.o \
	$(BUILD_DIR)/libs/Dolphin/CARD/asm/CARDDir.o \
	$(BUILD_DIR)/libs/Dolphin/CARD/asm/CARDCheck.o \
	$(BUILD_DIR)/libs/Dolphin/CARD/asm/CARDMount.o \
	$(BUILD_DIR)/libs/Dolphin/CARD/asm/CARDFormat.o \
	$(BUILD_DIR)/libs/Dolphin/CARD/asm/CARDOpen.o \
	$(BUILD_DIR)/libs/Dolphin/CARD/asm/CARDCreate.o \
	$(BUILD_DIR)/libs/Dolphin/CARD/asm/CARDRead.o \
	$(BUILD_DIR)/libs/Dolphin/CARD/asm/CARDWrite.o \
	$(BUILD_DIR)/libs/Dolphin/CARD/asm/CARDDelete.o \
	$(BUILD_DIR)/libs/Dolphin/CARD/asm/CARDStat.o \
	$(BUILD_DIR)/libs/Dolphin/CARD/asm/CARDStatEx.o \
	$(BUILD_DIR)/libs/Dolphin/CARD/asm/CARDNet.o

EXTAB_O_FILES := $(BUILD_DIR)/asm/extab_.o

EXTABINDEX_O_FILES := $(BUILD_DIR)/asm/extabindex_.o

TEXT_O_FILES := $(BUILD_DIR)/asm/text.o

RODATA_O_FILES := $(BUILD_DIR)/asm/rodata.o

DATA_O_FILES := $(BUILD_DIR)/asm/data.o

BSS_O_FILES := $(BUILD_DIR)/asm/bss.o

SDATA_O_FILES := $(BUILD_DIR)/asm/sdata.o

SBSS_O_FILES := $(BUILD_DIR)/asm/sbss.o

SDATA2_O_FILES := $(BUILD_DIR)/asm/sdata2.o
