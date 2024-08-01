#!/usr/bin/env python3

###
# Generates build files for the project.
# This file also includes the project configuration,
# such as compiler flags and the object matching status.
#
# Usage:
#   python3 configure.py
#   ninja
#
# Append --help to see available options.
###

import sys
import argparse

from pathlib import Path
from tools.project import (
    Object,
    ProjectConfig,
    calculate_progress,
    generate_build,
    is_windows,
)

# Game versions
DEFAULT_VERSION = 5
VERSIONS = [
    "Preview",      # 0
    "Review",       # 1
    "GXSE8P-Demo",  # 2
    "GASJ8P-Demo",  # 3
    "GASJ8P",       # 4
    "GXSE8P",       # 5
    "GXSP8P-Demo",  # 6
    "GXSP8P",       # 7
]

if len(VERSIONS) > 1:
    versions_str = ", ".join(VERSIONS[:-1]) + f" or {VERSIONS[-1]}"
else:
    versions_str = VERSIONS[0]

parser = argparse.ArgumentParser()
parser.add_argument(
    "mode",
    default="configure",
    help="configure or progress (default: configure)",
    nargs="?",
)
parser.add_argument(
    "--version",
    dest="version",
    default=VERSIONS[DEFAULT_VERSION],
    help=f"version to build ({versions_str})",
)
parser.add_argument(
    "--build-dir",
    dest="build_dir",
    type=Path,
    default=Path("build"),
    help="base build directory (default: build)",
)
parser.add_argument(
    "--binutils",
    dest="binutils",
    type=Path,
    help="path to binutils (optional)",
)
parser.add_argument(
    "--compilers",
    dest="compilers",
    type=Path,
    help="path to compilers (optional)",
)
parser.add_argument(
    "--map",
    dest="map",
    action="store_true",
    help="generate map file(s)",
)
parser.add_argument(
    "--debug",
    dest="debug",
    action="store_true",
    help="build with debug info (non-matching)",
)
if not is_windows():
    parser.add_argument(
        "--wrapper",
        dest="wrapper",
        type=Path,
        help="path to wibo or wine (optional)",
    )
parser.add_argument(
    "--build-dtk",
    dest="build_dtk",
    type=Path,
    help="path to decomp-toolkit source (optional)",
)
parser.add_argument(
    "--sjiswrap",
    dest="sjiswrap",
    type=Path,
    help="path to sjiswrap.exe (optional)",
)
parser.add_argument(
    "--verbose",
    dest="verbose",
    action="store_true",
    help="print verbose output",
)
args = parser.parse_args()

config = ProjectConfig()
config.version = args.version
if config.version not in VERSIONS:
    sys.exit(f"Invalid version '{config.version}', expected {versions_str}")
version_num = VERSIONS.index(config.version)

# Apply arguments
config.build_dir = args.build_dir
config.build_dtk_path = args.build_dtk
config.binutils_path = args.binutils
config.compilers_path = args.compilers
config.debug = args.debug
config.generate_map = args.map
config.sjiswrap_path = args.sjiswrap
if not is_windows():
    config.wrapper = args.wrapper

# Tool versions
config.binutils_tag = "2.42-1"
config.compilers_tag = "20240706"
config.dtk_tag = "v0.9.2"
config.sjiswrap_tag = "v1.1.1"
config.wibo_tag = "0.6.11"

# Project
config.config_path = Path("config") / config.version / "config.yml"
config.check_sha_path = Path("orig") / f"{config.version}.sha1"
config.asflags = [
    "-mgekko",
    # "-W",
    "--strip-local-absolute",
    "-gdwarf-2",
    "-I include",
    f"-I build/{config.version}/include",
    f"--defsym version={version_num}",
]
config.ldflags = [
    "-fp hardware",
    "-nodefaults",
]

# Base flags, common to most GC/Wii games.
# Generally leave untouched, with overrides added below.
cflags_base = [
    "-nodefaults",
    "-proc gekko",
    "-align powerpc",
    "-enum int",
    "-fp hardware",
    "-Cpp_exceptions off",
    # "-W all",
    "-O4,p",
    "-inline auto",
    '-pragma "cats off"',
    '-pragma "warn_notinlined off"',
    "-maxerrors 1",
    "-nosyspath",
    "-RTTI off",
    "-fp_contract on",
    "-str reuse",
    "-i include",
	"-multibyte",
    f"-DVERSION={version_num}",
]

# Debug flags
if config.debug:
    cflags_base.extend(["-sym on", "-DDEBUG=1"])
else:
    cflags_base.append("-DNDEBUG=1")

# Metrowerks library flags
cflags_runtime = [
    *cflags_base,
    "-use_lmw_stmw on",
    "-str reuse,pool,readonly",
    "-gccinc",
    "-common off",
    "-inline deferred,auto",
    "-char signed",
]

# Dolphin library flags
cflags_dolphin = [
    *cflags_base,
    "-use_lmw_stmw on",
    "-str reuse,pool,readonly",
    "-inline auto",
]

# Game code flags
cflags_sonicteam = [
    *cflags_base,
    # TODO
]

cflags_rel = [
    *cflags_sonicteam,
    "-sdata 0",
    "-sdata2 0",
]

config.linker_version = "GC/2.0"

# SADX RELs are weird and need more work done before they can be rebuilt
config.build_rels = False

# Helper function for Dolphin libraries
def DolphinLib(lib_name, objects):
    return {
        "lib": lib_name,
        "mw_version": "GC/1.2.5n",
        "cflags": cflags_dolphin,
        "host": False,
        "objects": objects,
    }

# Helper function for RELs
def Rel(lib_name, objects):
    return {
        "lib": lib_name,
        "mw_version": config.linker_version,
        "cflags": cflags_rel,
        "host": True,
        "objects": objects,
    }


Matching = True
NonMatching = False

config.warn_missing_config = True
config.warn_missing_source = False
config.libs = [
    {
        "lib": "Runtime.PPCEABI.H",
        "mw_version": "GC/1.3",
        "cflags": cflags_runtime,
        "host": False,
        "objects": [
            Object(Matching, "Runtime.PPCEABI.H/__va_arg.c"),
            Object(Matching, "Runtime.PPCEABI.H/global_destructor_chain.c"),
            Object(Matching, "Runtime.PPCEABI.H/__mem.c"),
            Object(NonMatching, "Runtime.PPCEABI.H/New.cp"),
            Object(NonMatching, "Runtime.PPCEABI.H/NewMore.cp"),
            Object(NonMatching, "Runtime.PPCEABI.H/NMWException.cp"),
            Object(Matching, "Runtime.PPCEABI.H/runtime.c"),
            Object(Matching, "Runtime.PPCEABI.H/__init_cpp_exceptions.cpp"),
            Object(NonMatching, "Runtime.PPCEABI.H/Gecko_ExceptionPPC.cp"),
            Object(NonMatching, "Runtime.PPCEABI.H/GCN_mem_alloc.c"),
        ],
    },
    {
        "lib": "MSL_C.PPCEABI.bare.H",
        "mw_version": "GC/1.3",
        "cflags": cflags_runtime,
        "host": False,
        "objects": [
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/PPC_EABI/abort_exit.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/alloc.c", extra_cflags=["-inline noauto"]),
            Object(Matching, "MSL_C.PPCEABI.bare.H/MSL_Common/errno.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/ansi_files.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/ansi_fp.c", extra_cflags=["-inline noauto"]),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/buffer_io.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/ctype.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/locale.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/direct_io.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/file_io.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/FILE_POS.C"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/mbstring.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/mem.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/mem_funcs.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/misc_io.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/printf.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/rand.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/float.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/scanf.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/signal.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/string.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/strtold.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/strtoul.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/PPC_EABI/uart_console_io.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common/wchar_io.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/e_acos.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/e_asin.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/e_atan2.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/e_log.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/e_log10.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/e_pow.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/e_rem_pio2.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/k_cos.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/k_rem_pio2.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/k_sin.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/k_tan.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/s_atan.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/s_ceil.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/s_copysign.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/s_cos.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/s_floor.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/s_frexp.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/s_ldexp.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/s_modf.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/s_nextafter.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/s_sin.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/s_tan.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/w_acos.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/w_asin.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/w_atan2.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/w_log.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/w_log10.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/MSL_Common_Embedded/Math/Double_precision/w_pow.c"),
            Object(NonMatching, "MSL_C.PPCEABI.bare.H/PPC_EABI/math_ppc.c"),
        ],
    },
    {
        "lib": "TRK_MINNOW_DOLPHIN",
        "mw_version": "GC/1.3.2",
        "cflags": cflags_runtime,
        "host": False,
        "objects": [
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Portable/mainloop.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Portable/nubevent.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Portable/nubinit.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Portable/msg.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Portable/msgbuf.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Portable/serpoll.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Portable/usr_put.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Portable/dispatch.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Portable/msghndlr.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Portable/support.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Portable/mutex_TRK.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Portable/notify.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/ppc/Generic/flush_cache.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Portable/mem_TRK.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/ppc/Generic/targimpl.c"),
            Object(Matching, "TRK_MINNOW_DOLPHIN/ppc/Export/targsupp.s"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/ppc/Generic/__exception.s"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Os/dolphin/dolphin_trk.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/ppc/Generic/mpc_7xx_603e.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Portable/main_TRK.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Os/dolphin/dolphin_trk_glue.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Os/dolphin/targcont.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/Os/dolphin/target_options.c"),
            Object(NonMatching, "TRK_MINNOW_DOLPHIN/MetroTRK/Export/mslsupp.c"),
        ],
    },
    DolphinLib(
        "ai",
        [
            Object(NonMatching, "Dolphin/AI/ai.c"),
        ],
    ),
    DolphinLib(
        "amcstubs",
        [
            Object(NonMatching, "Dolphin/AMCStubs/AmcExi2Stubs.c"),
        ],
    ),
    DolphinLib(
        "ar",
        [
            Object(NonMatching, "Dolphin/AR/ar.c"),
            Object(NonMatching, "Dolphin/AR/arq.c"),
        ],
    ),
    DolphinLib(
        "ax",
        [
            Object(NonMatching, "Dolphin/AX/AX.c"),
            Object(NonMatching, "Dolphin/AX/AXAlloc.c"),
            Object(NonMatching, "Dolphin/AX/AXAux.c"),
            Object(NonMatching, "Dolphin/AX/AXCL.c"),
            Object(NonMatching, "Dolphin/AX/AXOut.c"),
            Object(NonMatching, "Dolphin/AX/AXSPB.c"),
            Object(NonMatching, "Dolphin/AX/AXVPB.c"),
            Object(NonMatching, "Dolphin/AX/AXProf.c"),
            Object(NonMatching, "Dolphin/AX/AXComp.c"),
            Object(NonMatching, "Dolphin/AX/DSPCode.c"),
        ],
    ),
    DolphinLib(
        "axfx",
        [
            Object(NonMatching, "Dolphin/AXFX/reverb_hi.c"),
            Object(NonMatching, "Dolphin/AXFX/reverb_std.c"),
            Object(NonMatching, "Dolphin/AXFX/chorus.c"),
            Object(NonMatching, "Dolphin/AXFX/delay.c"),
            Object(NonMatching, "Dolphin/AXFX/axfx.c"),
        ],
    ),
    DolphinLib(
        "base",
        [
            Object(NonMatching, "Dolphin/BASE/PPCArch.c"),
        ],
    ),
    DolphinLib(
        "card",
        [
            Object(NonMatching, "Dolphin/CARD/CARDBios.c"),
            Object(NonMatching, "Dolphin/CARD/CARDUnlock.c"),
            Object(NonMatching, "Dolphin/CARD/CARDRdwr.c"),
            Object(NonMatching, "Dolphin/CARD/CARDBlock.c"),
            Object(NonMatching, "Dolphin/CARD/CARDDir.c"),
            Object(NonMatching, "Dolphin/CARD/CARDCheck.c"),
            Object(NonMatching, "Dolphin/CARD/CARDMount.c"),
            Object(NonMatching, "Dolphin/CARD/CARDFormat.c"),
            Object(NonMatching, "Dolphin/CARD/CARDOpen.c"),
            Object(NonMatching, "Dolphin/CARD/CARDCreate.c"),
            Object(NonMatching, "Dolphin/CARD/CARDRead.c"),
            Object(NonMatching, "Dolphin/CARD/CARDWrite.c"),
            Object(NonMatching, "Dolphin/CARD/CARDDelete.c"),
            Object(NonMatching, "Dolphin/CARD/CARDStat.c"),
            Object(NonMatching, "Dolphin/CARD/CARDStatEx.c"),
            Object(NonMatching, "Dolphin/CARD/CARDNet.c"),
        ],
    ),
    DolphinLib(
        "db",
        [
            Object(NonMatching, "Dolphin/DB/db.c"),
        ],
    ),
    DolphinLib(
        "dsp",
        [
            Object(NonMatching, "Dolphin/DSP/dsp.c"),
            Object(NonMatching, "Dolphin/DSP/dsp_debug.c"),
            Object(NonMatching, "Dolphin/DSP/dsp_task.c"),
        ],
    ),
    DolphinLib(
        "dvd",
        [
            Object(NonMatching, "Dolphin/DVD/dvdlow.c"),
            Object(NonMatching, "Dolphin/DVD/dvdfs.c"),
            Object(NonMatching, "Dolphin/DVD/dvd.c"),
            Object(NonMatching, "Dolphin/DVD/dvdqueue.c"),
            Object(NonMatching, "Dolphin/DVD/dvderror.c"),
            Object(NonMatching, "Dolphin/DVD/dvdidutils.c"),
            Object(NonMatching, "Dolphin/DVD/dvdFatal.c"),
            Object(NonMatching, "Dolphin/DVD/fstload.c"),
        ],
    ),
    DolphinLib(
        "exi",
        [
            Object(NonMatching, "Dolphin/EXI/EXIBios.c"),
            Object(NonMatching, "Dolphin/EXI/EXIUart.c"),
        ],
    ),
    # TODO: RELs
]

if args.mode == "configure":
    # Write build.ninja and objdiff.json
    generate_build(config)
elif args.mode == "progress":
    # Print progress and write progress.json
    config.progress_each_module = args.verbose
    calculate_progress(config)
else:
    sys.exit("Unknown mode: " + args.mode)