; ModuleID = 'bzip2.c'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-unknown-elf"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (%struct._reent*, i8*, i8*, i32)*, i32 (%struct._reent*, i8*, i8*, i32)*, i32 (%struct._reent*, i8*, i32, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i32, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon, [32 x i8] }
%struct.anon = type { i32, i8*, [26 x i8], %struct.__tm, i32, i64, %struct._rand48, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, [8 x i8], [24 x i8], i32, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, i32 }
%struct.__tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._rand48 = type { [3 x i16], [3 x i16], i16 }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.stat = type { i16, i16, i32, i16, i16, i16, i16, i32, %struct.timespec, %struct.timespec, %struct.timespec, i32, i32, [2 x i32] }
%struct.timespec = type { i64, i32 }
%struct.zzzz = type { i8*, %struct.zzzz* }
%struct.UInt64 = type { [8 x i8] }
%struct.utimbuf = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c".bz2\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".bz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".tbz2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".tbz\00", align 1
@zSuffix = dso_local global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 4, !dbg !0
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".tar\00", align 1
@unzSuffix = dso_local global [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)], align 4, !dbg !30
@outputHandleJustInCase = dso_local global %struct.__sFILE* null, align 4, !dbg !80
@smallMode = dso_local global i8 0, align 1, !dbg !41
@keepInputFiles = dso_local global i8 0, align 1, !dbg !39
@forceOverwrite = dso_local global i8 0, align 1, !dbg !45
@noisy = dso_local global i8 0, align 1, !dbg !51
@verbosity = dso_local global i32 0, align 4, !dbg !37
@blockSize100k = dso_local global i32 0, align 4, !dbg !57
@testFailsExist = dso_local global i8 0, align 1, !dbg !47
@unzFailsExist = dso_local global i8 0, align 1, !dbg !49
@numFileNames = dso_local global i32 0, align 4, !dbg !53
@numFilesProcessed = dso_local global i32 0, align 4, !dbg !55
@workFactor = dso_local global i32 0, align 4, !dbg !298
@deleteOutputOnInterrupt = dso_local global i8 0, align 1, !dbg !43
@exitValue = dso_local global i32 0, align 4, !dbg !59
@inName = dso_local global [1034 x i8] zeroinitializer, align 1, !dbg !67
@.str.6 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@outName = dso_local global [1034 x i8] zeroinitializer, align 1, !dbg !72
@progNameReally = dso_local global [1034 x i8] zeroinitializer, align 1, !dbg !78
@progName = dso_local global i8* null, align 4, !dbg !76
@.str.7 = private unnamed_addr constant [6 x i8] c"BZIP2\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"BZIP\00", align 1
@longestFileName = dso_local global i32 0, align 4, !dbg !65
@.str.9 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@srcMode = dso_local global i32 0, align 4, !dbg !63
@opMode = dso_local global i32 0, align 4, !dbg !61
@.str.10 = private unnamed_addr constant [6 x i8] c"unzip\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"UNZIP\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"z2cat\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Z2CAT\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"zcat\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"ZCAT\00", align 1
@_impure_ptr = external dso_local global %struct._reent*, align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"%s: Bad flag `%s'\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"--stdout\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"--decompress\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"--compress\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"--force\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"--test\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"--keep\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"--small\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"--license\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"--exponential\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"--repetitive-best\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"--repetitive-fast\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"--fast\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"--best\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"%s: -c and -t cannot be used together.\0A\00", align 1
@.str.35 = private unnamed_addr constant [113 x i8] c"\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1
@tmpName = dso_local global [1034 x i8] zeroinitializer, align 1, !dbg !74
@.str.36 = private unnamed_addr constant [870 x i8] c": Caught a SIGSEGV or SIGBUS whilst compressing.\0A\0A   Possible causes are (most likely first):\0A   (1) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (2) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (3) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (1) and (2).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (1)\0A   or (2), feel free to report it to: bzip2-devel@sourceware.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [997 x i8] c": Caught a SIGSEGV or SIGBUS whilst decompressing.\0A\0A   Possible causes are (most likely first):\0A   (1) The compressed data is corrupted, and bzip2's usual checks\0A       failed to detect this.  Try bzip2 -tvv my_file.bz2.\0A   (2) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (3) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (4) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (2) and (3).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (2)\0A   or (3), feel free to report it to: bzip2-devel@sourceware.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"\09Input file = \00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"\09Output file = \00", align 1
@.str.41 = private unnamed_addr constant [120 x i8] c"bzip2: file name\0A`%s'\0Ais suspiciously (more than %d chars) long.\0ATry using a reasonable file name instead.  Sorry! :-)\0A\00", align 1
@_ctype_ = external dso_local constant [0 x i8], align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"\0A%s: couldn't allocate enough memory\0A\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"\09Input file = %s, output file = %s\0A\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"%s: Deleting output file %s, if it exists.\0A\00", align 1
@.str.45 = private unnamed_addr constant [59 x i8] c"%s: WARNING: deletion of output file (apparently) failed.\0A\00", align 1
@.str.46 = private unnamed_addr constant [49 x i8] c"%s: WARNING: deletion of output file suppressed\0A\00", align 1
@.str.47 = private unnamed_addr constant [56 x i8] c"%s:    since input file no longer exists.  Output file\0A\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"%s:    `%s' may be incomplete.\0A\00", align 1
@.str.49 = private unnamed_addr constant [61 x i8] c"%s:    I suggest doing an integrity test (bzip2 -tv) of it.\0A\00", align 1
@.str.50 = private unnamed_addr constant [110 x i8] c"%s: WARNING: some files have not been processed:\0A%s:    %d specified on command line, %d not processed yet.\0A\0A\00", align 1
@.str.51 = private unnamed_addr constant [525 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A   \0A   Copyright (C) 1996-2019 by Julian Seward.\0A   \0A   This program is free software; you can redistribute it and/or modify\0A   it under the terms set out in the LICENSE file, which is included\0A   in the bzip2 source distribution.\0A   \0A   This program is distributed in the hope that it will be useful,\0A   but WITHOUT ANY WARRANTY; without even the implied warranty of\0A   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A   LICENSE file for more details.\0A   \0A\00", align 1
@.str.52 = private unnamed_addr constant [1230 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A\0A   usage: %s [flags and input files in any order]\0A\0A   -h --help           print this message\0A   -d --decompress     force decompression\0A   -z --compress       force compression\0A   -k --keep           keep (don't delete) input files\0A   -f --force          overwrite existing output files\0A   -t --test           test compressed file integrity\0A   -c --stdout         output to standard out\0A   -q --quiet          suppress noncritical error messages\0A   -v --verbose        be verbose (a 2nd -v gives more)\0A   -L --license        display software version & license\0A   -V --version        display software version & license\0A   -s --small          use less memory (at most 2500k)\0A   -1 .. -9            set block size to 100k .. 900k\0A   --fast              alias for -1\0A   --best              alias for -9\0A\0A   If invoked as `bzip2', default action is to compress.\0A              as `bunzip2',  default action is to decompress.\0A              as `bzcat', default action is to decompress to stdout.\0A\0A   If no file names are given, bzip2 compresses or decompresses\0A   from standard input to standard output.  You can combine\0A   short flags, so `-v -4' means the same as -v4 or -4v, &c.\0A\0A\00", align 1
@.str.53 = private unnamed_addr constant [49 x i8] c"%s: %s is redundant in versions 0.9.5 and above\0A\00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"\0A%s: Control-C or similar caught, quitting.\0A\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"compress: bad modes\0A\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"(stdout)\00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"%s: There are no files matching `%s'.\0A\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"%s: Can't open input file %s: %s.\0A\00", align 1
@.str.60 = private unnamed_addr constant [42 x i8] c"%s: Input file %s already has %s suffix.\0A\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"%s: Input file %s is a directory.\0A\00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"%s: Input file %s is not a normal file.\0A\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"%s: Output file %s already exists.\0A\00", align 1
@.str.64 = private unnamed_addr constant [40 x i8] c"%s: Input file %s has %d other link%s.\0A\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.66 = private unnamed_addr constant [50 x i8] c"%s: I won't write compressed data to a terminal.\0A\00", align 1
@.str.67 = private unnamed_addr constant [34 x i8] c"%s: For help, type: `%s --help'.\0A\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.70 = private unnamed_addr constant [38 x i8] c"%s: Can't create output file %s: %s.\0A\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"compress: bad srcMode\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"  %s: \00", align 1
@.str.73 = private unnamed_addr constant [113 x i8] c"\0A%s: PANIC -- internal consistency error:\0A\09%s\0A\09This is a BUG.  Please report it to:\0A\09bzip2-devel@sourceware.org\0A\00", align 1
@fileMetaInfo = internal global %struct.stat zeroinitializer, align 8, !dbg !300
@.str.74 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c" no data compressed.\0A\00", align 1
@.str.76 = private unnamed_addr constant [57 x i8] c"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\0A\00", align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"compress:unexpected error\00", align 1
@.str.78 = private unnamed_addr constant [236 x i8] c"bzip2: I'm not configured correctly for this platform!\0A\09I require Int32, Int16 and Char to have sizes\0A\09of 4, 2 and 1 bytes to run properly, and they don't.\0A\09Probably you can fix this by defining them correctly,\0A\09and recompiling.  Bye!\0A\00", align 1
@.str.79 = private unnamed_addr constant [65 x i8] c"\0A%s: I/O or other error, bailing out.  Possible reason follows.\0A\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"uncompress: bad modes\0A\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c".out\00", align 1
@.str.82 = private unnamed_addr constant [50 x i8] c"%s: Can't guess original name for %s -- using %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [51 x i8] c"%s: I won't read compressed data from a terminal.\0A\00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c"%s: Can't open input file %s:%s.\0A\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"uncompress: bad srcMode\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"not a bzip2 file.\0A\00", align 1
@.str.88 = private unnamed_addr constant [29 x i8] c"%s: %s is not a bzip2 file.\0A\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"decompress:bzReadGetUnused\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.91 = private unnamed_addr constant [45 x i8] c"\0A%s: %s: trailing garbage after EOF ignored\0A\00", align 1
@.str.92 = private unnamed_addr constant [28 x i8] c"decompress:unexpected error\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"\0A%s: Data integrity error when decompressing.\0A\00", align 1
@.str.94 = private unnamed_addr constant [241 x i8] c"\0AIt is possible that the compressed file(s) have become corrupted.\0AYou can use the -tvv option to test integrity of such files.\0A\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1
@.str.95 = private unnamed_addr constant [95 x i8] c"\0A%s: Compressed file ends unexpectedly;\0A\09perhaps it is corrupted?  *Possible* reason follows.\0A\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"testf: bad modes\0A\00", align 1
@.str.97 = private unnamed_addr constant [30 x i8] c"%s: Can't open input %s: %s.\0A\00", align 1
@.str.98 = private unnamed_addr constant [19 x i8] c"testf: bad srcMode\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.100 = private unnamed_addr constant [21 x i8] c"test:bzReadGetUnused\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"%s: %s: \00", align 1
@.str.102 = private unnamed_addr constant [36 x i8] c"data integrity (CRC) error in data\0A\00", align 1
@.str.103 = private unnamed_addr constant [24 x i8] c"file ends unexpectedly\0A\00", align 1
@.str.104 = private unnamed_addr constant [46 x i8] c"bad magic number (file not created by bzip2)\0A\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"trailing garbage after EOF ignored\0A\00", align 1
@.str.106 = private unnamed_addr constant [22 x i8] c"test:unexpected error\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main(i32 %0, i8** %1) #0 !dbg !358 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 4
  %9 = alloca %struct.zzzz*, align 4
  %10 = alloca %struct.zzzz*, align 4
  %11 = alloca i8, align 1
  %12 = alloca %struct.zzzz*, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !363, metadata !DIExpression()), !dbg !364
  store i8** %1, i8*** %5, align 4
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !365, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.declare(metadata i32* %6, metadata !367, metadata !DIExpression()), !dbg !368
  call void @llvm.dbg.declare(metadata i32* %7, metadata !369, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata i8** %8, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata %struct.zzzz** %9, metadata !373, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.declare(metadata %struct.zzzz** %10, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata i8* %11, metadata !377, metadata !DIExpression()), !dbg !378
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !379
  store i8 0, i8* @smallMode, align 1, !dbg !380
  store i8 0, i8* @keepInputFiles, align 1, !dbg !381
  store i8 0, i8* @forceOverwrite, align 1, !dbg !382
  store i8 1, i8* @noisy, align 1, !dbg !383
  store i32 0, i32* @verbosity, align 4, !dbg !384
  store i32 9, i32* @blockSize100k, align 4, !dbg !385
  store i8 0, i8* @testFailsExist, align 1, !dbg !386
  store i8 0, i8* @unzFailsExist, align 1, !dbg !387
  store i32 0, i32* @numFileNames, align 4, !dbg !388
  store i32 0, i32* @numFilesProcessed, align 4, !dbg !389
  store i32 30, i32* @workFactor, align 4, !dbg !390
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !391
  store i32 0, i32* @exitValue, align 4, !dbg !392
  store i32 0, i32* %7, align 4, !dbg !393
  store i32 0, i32* %6, align 4, !dbg !394
  %13 = call void (i32)* @signal(i32 11, void (i32)* @mySIGSEGVorSIGBUScatcher), !dbg !395
  %14 = call void (i32)* @signal(i32 10, void (i32)* @mySIGSEGVorSIGBUScatcher), !dbg !396
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)), !dbg !397
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)), !dbg !398
  %15 = load i8**, i8*** %5, align 4, !dbg !399
  %16 = getelementptr inbounds i8*, i8** %15, i32 0, !dbg !399
  %17 = load i8*, i8** %16, align 4, !dbg !399
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @progNameReally, i32 0, i32 0), i8* %17), !dbg !400
  store i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @progNameReally, i32 0, i32 0), i8** @progName, align 4, !dbg !401
  store i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @progNameReally, i32 0, i32 0), i8** %8, align 4, !dbg !402
  br label %18, !dbg !404

18:                                               ; preds = %32, %2
  %19 = load i8*, i8** %8, align 4, !dbg !405
  %20 = load i8, i8* %19, align 1, !dbg !407
  %21 = zext i8 %20 to i32, !dbg !407
  %22 = icmp ne i32 %21, 0, !dbg !408
  br i1 %22, label %23, label %35, !dbg !409

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 4, !dbg !410
  %25 = load i8, i8* %24, align 1, !dbg !412
  %26 = zext i8 %25 to i32, !dbg !412
  %27 = icmp eq i32 %26, 47, !dbg !413
  br i1 %27, label %28, label %31, !dbg !414

28:                                               ; preds = %23
  %29 = load i8*, i8** %8, align 4, !dbg !415
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !416
  store i8* %30, i8** @progName, align 4, !dbg !417
  br label %31, !dbg !418

31:                                               ; preds = %28, %23
  br label %32, !dbg !419

32:                                               ; preds = %31
  %33 = load i8*, i8** %8, align 4, !dbg !420
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !420
  store i8* %34, i8** %8, align 4, !dbg !420
  br label %18, !dbg !421, !llvm.loop !422

35:                                               ; preds = %18
  store %struct.zzzz* null, %struct.zzzz** %9, align 4, !dbg !425
  call void @addFlagsFromEnvVar(%struct.zzzz** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)), !dbg !426
  call void @addFlagsFromEnvVar(%struct.zzzz** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0)), !dbg !427
  store i32 1, i32* %6, align 4, !dbg !428
  br label %36, !dbg !430

36:                                               ; preds = %48, %35
  %37 = load i32, i32* %6, align 4, !dbg !431
  %38 = load i32, i32* %4, align 4, !dbg !433
  %39 = sub nsw i32 %38, 1, !dbg !434
  %40 = icmp sle i32 %37, %39, !dbg !435
  br i1 %40, label %41, label %51, !dbg !436

41:                                               ; preds = %36
  %42 = load %struct.zzzz*, %struct.zzzz** %9, align 4, !dbg !437
  %43 = load i8**, i8*** %5, align 4, !dbg !437
  %44 = load i32, i32* %6, align 4, !dbg !437
  %45 = getelementptr inbounds i8*, i8** %43, i32 %44, !dbg !437
  %46 = load i8*, i8** %45, align 4, !dbg !437
  %47 = call %struct.zzzz* @snocString(%struct.zzzz* %42, i8* %46), !dbg !437
  store %struct.zzzz* %47, %struct.zzzz** %9, align 4, !dbg !437
  br label %48, !dbg !437

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4, !dbg !438
  %50 = add nsw i32 %49, 1, !dbg !438
  store i32 %50, i32* %6, align 4, !dbg !438
  br label %36, !dbg !439, !llvm.loop !440

51:                                               ; preds = %36
  store i32 7, i32* @longestFileName, align 4, !dbg !442
  store i32 0, i32* @numFileNames, align 4, !dbg !443
  store i8 1, i8* %11, align 1, !dbg !444
  %52 = load %struct.zzzz*, %struct.zzzz** %9, align 4, !dbg !445
  store %struct.zzzz* %52, %struct.zzzz** %10, align 4, !dbg !447
  br label %53, !dbg !448

53:                                               ; preds = %91, %51
  %54 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !449
  %55 = icmp ne %struct.zzzz* %54, null, !dbg !451
  br i1 %55, label %56, label %95, !dbg !452

56:                                               ; preds = %53
  %57 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !453
  %58 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %57, i32 0, i32 0, !dbg !453
  %59 = load i8*, i8** %58, align 4, !dbg !453
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !453
  %61 = icmp eq i32 %60, 0, !dbg !453
  br i1 %61, label %62, label %63, !dbg !456

62:                                               ; preds = %56
  store i8 0, i8* %11, align 1, !dbg !457
  br label %91, !dbg !459

63:                                               ; preds = %56
  %64 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !460
  %65 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %64, i32 0, i32 0, !dbg !462
  %66 = load i8*, i8** %65, align 4, !dbg !462
  %67 = getelementptr inbounds i8, i8* %66, i32 0, !dbg !460
  %68 = load i8, i8* %67, align 1, !dbg !460
  %69 = zext i8 %68 to i32, !dbg !460
  %70 = icmp eq i32 %69, 45, !dbg !463
  br i1 %70, label %71, label %76, !dbg !464

71:                                               ; preds = %63
  %72 = load i8, i8* %11, align 1, !dbg !465
  %73 = zext i8 %72 to i32, !dbg !465
  %74 = icmp ne i32 %73, 0, !dbg !465
  br i1 %74, label %75, label %76, !dbg !466

75:                                               ; preds = %71
  br label %91, !dbg !467

76:                                               ; preds = %71, %63
  %77 = load i32, i32* @numFileNames, align 4, !dbg !468
  %78 = add nsw i32 %77, 1, !dbg !468
  store i32 %78, i32* @numFileNames, align 4, !dbg !468
  %79 = load i32, i32* @longestFileName, align 4, !dbg !469
  %80 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !471
  %81 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %80, i32 0, i32 0, !dbg !472
  %82 = load i8*, i8** %81, align 4, !dbg !472
  %83 = call i32 @strlen(i8* %82), !dbg !473
  %84 = icmp slt i32 %79, %83, !dbg !474
  br i1 %84, label %85, label %90, !dbg !475

85:                                               ; preds = %76
  %86 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !476
  %87 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %86, i32 0, i32 0, !dbg !477
  %88 = load i8*, i8** %87, align 4, !dbg !477
  %89 = call i32 @strlen(i8* %88), !dbg !478
  store i32 %89, i32* @longestFileName, align 4, !dbg !479
  br label %90, !dbg !480

90:                                               ; preds = %85, %76
  br label %91, !dbg !481

91:                                               ; preds = %90, %75, %62
  %92 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !482
  %93 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %92, i32 0, i32 1, !dbg !483
  %94 = load %struct.zzzz*, %struct.zzzz** %93, align 4, !dbg !483
  store %struct.zzzz* %94, %struct.zzzz** %10, align 4, !dbg !484
  br label %53, !dbg !485, !llvm.loop !486

95:                                               ; preds = %53
  %96 = load i32, i32* @numFileNames, align 4, !dbg !488
  %97 = icmp eq i32 %96, 0, !dbg !490
  br i1 %97, label %98, label %99, !dbg !491

98:                                               ; preds = %95
  store i32 1, i32* @srcMode, align 4, !dbg !492
  br label %100, !dbg !493

99:                                               ; preds = %95
  store i32 3, i32* @srcMode, align 4, !dbg !494
  br label %100

100:                                              ; preds = %99, %98
  store i32 1, i32* @opMode, align 4, !dbg !495
  %101 = load i8*, i8** @progName, align 4, !dbg !496
  %102 = call i8* @strstr(i8* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)), !dbg !498
  %103 = icmp ne i8* %102, null, !dbg !499
  br i1 %103, label %108, label %104, !dbg !500

104:                                              ; preds = %100
  %105 = load i8*, i8** @progName, align 4, !dbg !501
  %106 = call i8* @strstr(i8* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)), !dbg !502
  %107 = icmp ne i8* %106, null, !dbg !503
  br i1 %107, label %108, label %109, !dbg !504

108:                                              ; preds = %104, %100
  store i32 2, i32* @opMode, align 4, !dbg !505
  br label %109, !dbg !506

109:                                              ; preds = %108, %104
  %110 = load i8*, i8** @progName, align 4, !dbg !507
  %111 = call i8* @strstr(i8* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)), !dbg !509
  %112 = icmp ne i8* %111, null, !dbg !510
  br i1 %112, label %125, label %113, !dbg !511

113:                                              ; preds = %109
  %114 = load i8*, i8** @progName, align 4, !dbg !512
  %115 = call i8* @strstr(i8* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)), !dbg !513
  %116 = icmp ne i8* %115, null, !dbg !514
  br i1 %116, label %125, label %117, !dbg !515

117:                                              ; preds = %113
  %118 = load i8*, i8** @progName, align 4, !dbg !516
  %119 = call i8* @strstr(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)), !dbg !517
  %120 = icmp ne i8* %119, null, !dbg !518
  br i1 %120, label %125, label %121, !dbg !519

121:                                              ; preds = %117
  %122 = load i8*, i8** @progName, align 4, !dbg !520
  %123 = call i8* @strstr(i8* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)), !dbg !521
  %124 = icmp ne i8* %123, null, !dbg !522
  br i1 %124, label %125, label %130, !dbg !523

125:                                              ; preds = %121, %117, %113, %109
  store i32 2, i32* @opMode, align 4, !dbg !524
  %126 = load i32, i32* @numFileNames, align 4, !dbg !526
  %127 = icmp eq i32 %126, 0, !dbg !527
  %128 = zext i1 %127 to i64, !dbg !528
  %129 = select i1 %127, i32 1, i32 2, !dbg !528
  store i32 %129, i32* @srcMode, align 4, !dbg !529
  br label %130, !dbg !530

130:                                              ; preds = %125, %121
  %131 = load %struct.zzzz*, %struct.zzzz** %9, align 4, !dbg !531
  store %struct.zzzz* %131, %struct.zzzz** %10, align 4, !dbg !533
  br label %132, !dbg !534

132:                                              ; preds = %215, %130
  %133 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !535
  %134 = icmp ne %struct.zzzz* %133, null, !dbg !537
  br i1 %134, label %135, label %219, !dbg !538

135:                                              ; preds = %132
  %136 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !539
  %137 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %136, i32 0, i32 0, !dbg !539
  %138 = load i8*, i8** %137, align 4, !dbg !539
  %139 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !539
  %140 = icmp eq i32 %139, 0, !dbg !539
  br i1 %140, label %141, label %142, !dbg !542

141:                                              ; preds = %135
  br label %219, !dbg !543

142:                                              ; preds = %135
  %143 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !544
  %144 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %143, i32 0, i32 0, !dbg !546
  %145 = load i8*, i8** %144, align 4, !dbg !546
  %146 = getelementptr inbounds i8, i8* %145, i32 0, !dbg !544
  %147 = load i8, i8* %146, align 1, !dbg !544
  %148 = zext i8 %147 to i32, !dbg !544
  %149 = icmp eq i32 %148, 45, !dbg !547
  br i1 %149, label %150, label %214, !dbg !548

150:                                              ; preds = %142
  %151 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !549
  %152 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %151, i32 0, i32 0, !dbg !550
  %153 = load i8*, i8** %152, align 4, !dbg !550
  %154 = getelementptr inbounds i8, i8* %153, i32 1, !dbg !549
  %155 = load i8, i8* %154, align 1, !dbg !549
  %156 = zext i8 %155 to i32, !dbg !549
  %157 = icmp ne i32 %156, 45, !dbg !551
  br i1 %157, label %158, label %214, !dbg !552

158:                                              ; preds = %150
  store i32 1, i32* %7, align 4, !dbg !553
  br label %159, !dbg !556

159:                                              ; preds = %210, %158
  %160 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !557
  %161 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %160, i32 0, i32 0, !dbg !559
  %162 = load i8*, i8** %161, align 4, !dbg !559
  %163 = load i32, i32* %7, align 4, !dbg !560
  %164 = getelementptr inbounds i8, i8* %162, i32 %163, !dbg !557
  %165 = load i8, i8* %164, align 1, !dbg !557
  %166 = zext i8 %165 to i32, !dbg !557
  %167 = icmp ne i32 %166, 0, !dbg !561
  br i1 %167, label %168, label %213, !dbg !562

168:                                              ; preds = %159
  %169 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !563
  %170 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %169, i32 0, i32 0, !dbg !565
  %171 = load i8*, i8** %170, align 4, !dbg !565
  %172 = load i32, i32* %7, align 4, !dbg !566
  %173 = getelementptr inbounds i8, i8* %171, i32 %172, !dbg !563
  %174 = load i8, i8* %173, align 1, !dbg !563
  %175 = zext i8 %174 to i32, !dbg !563
  switch i32 %175, label %199 [
    i32 99, label %176
    i32 100, label %177
    i32 122, label %178
    i32 102, label %179
    i32 116, label %180
    i32 107, label %181
    i32 115, label %182
    i32 113, label %183
    i32 49, label %184
    i32 50, label %185
    i32 51, label %186
    i32 52, label %187
    i32 53, label %188
    i32 54, label %189
    i32 55, label %190
    i32 56, label %191
    i32 57, label %192
    i32 86, label %193
    i32 76, label %193
    i32 118, label %194
    i32 104, label %197
  ], !dbg !567

176:                                              ; preds = %168
  store i32 2, i32* @srcMode, align 4, !dbg !568
  br label %209, !dbg !570

177:                                              ; preds = %168
  store i32 2, i32* @opMode, align 4, !dbg !571
  br label %209, !dbg !572

178:                                              ; preds = %168
  store i32 1, i32* @opMode, align 4, !dbg !573
  br label %209, !dbg !574

179:                                              ; preds = %168
  store i8 1, i8* @forceOverwrite, align 1, !dbg !575
  br label %209, !dbg !576

180:                                              ; preds = %168
  store i32 3, i32* @opMode, align 4, !dbg !577
  br label %209, !dbg !578

181:                                              ; preds = %168
  store i8 1, i8* @keepInputFiles, align 1, !dbg !579
  br label %209, !dbg !580

182:                                              ; preds = %168
  store i8 1, i8* @smallMode, align 1, !dbg !581
  br label %209, !dbg !582

183:                                              ; preds = %168
  store i8 0, i8* @noisy, align 1, !dbg !583
  br label %209, !dbg !584

184:                                              ; preds = %168
  store i32 1, i32* @blockSize100k, align 4, !dbg !585
  br label %209, !dbg !586

185:                                              ; preds = %168
  store i32 2, i32* @blockSize100k, align 4, !dbg !587
  br label %209, !dbg !588

186:                                              ; preds = %168
  store i32 3, i32* @blockSize100k, align 4, !dbg !589
  br label %209, !dbg !590

187:                                              ; preds = %168
  store i32 4, i32* @blockSize100k, align 4, !dbg !591
  br label %209, !dbg !592

188:                                              ; preds = %168
  store i32 5, i32* @blockSize100k, align 4, !dbg !593
  br label %209, !dbg !594

189:                                              ; preds = %168
  store i32 6, i32* @blockSize100k, align 4, !dbg !595
  br label %209, !dbg !596

190:                                              ; preds = %168
  store i32 7, i32* @blockSize100k, align 4, !dbg !597
  br label %209, !dbg !598

191:                                              ; preds = %168
  store i32 8, i32* @blockSize100k, align 4, !dbg !599
  br label %209, !dbg !600

192:                                              ; preds = %168
  store i32 9, i32* @blockSize100k, align 4, !dbg !601
  br label %209, !dbg !602

193:                                              ; preds = %168, %168
  call void @license(), !dbg !603
  br label %209, !dbg !604

194:                                              ; preds = %168
  %195 = load i32, i32* @verbosity, align 4, !dbg !605
  %196 = add nsw i32 %195, 1, !dbg !605
  store i32 %196, i32* @verbosity, align 4, !dbg !605
  br label %209, !dbg !606

197:                                              ; preds = %168
  %198 = load i8*, i8** @progName, align 4, !dbg !607
  call void @usage(i8* %198), !dbg !608
  call void @exit(i32 0) #7, !dbg !609
  unreachable, !dbg !609

199:                                              ; preds = %168
  %200 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !610
  %201 = getelementptr inbounds %struct._reent, %struct._reent* %200, i32 0, i32 3, !dbg !610
  %202 = load %struct.__sFILE*, %struct.__sFILE** %201, align 4, !dbg !610
  %203 = load i8*, i8** @progName, align 4, !dbg !611
  %204 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !612
  %205 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %204, i32 0, i32 0, !dbg !613
  %206 = load i8*, i8** %205, align 4, !dbg !613
  %207 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %202, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* %203, i8* %206), !dbg !614
  %208 = load i8*, i8** @progName, align 4, !dbg !615
  call void @usage(i8* %208), !dbg !616
  call void @exit(i32 1) #7, !dbg !617
  unreachable, !dbg !617

209:                                              ; preds = %194, %193, %192, %191, %190, %189, %188, %187, %186, %185, %184, %183, %182, %181, %180, %179, %178, %177, %176
  br label %210, !dbg !618

210:                                              ; preds = %209
  %211 = load i32, i32* %7, align 4, !dbg !619
  %212 = add nsw i32 %211, 1, !dbg !619
  store i32 %212, i32* %7, align 4, !dbg !619
  br label %159, !dbg !620, !llvm.loop !621

213:                                              ; preds = %159
  br label %214, !dbg !623

214:                                              ; preds = %213, %150, %142
  br label %215, !dbg !624

215:                                              ; preds = %214
  %216 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !625
  %217 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %216, i32 0, i32 1, !dbg !626
  %218 = load %struct.zzzz*, %struct.zzzz** %217, align 4, !dbg !626
  store %struct.zzzz* %218, %struct.zzzz** %10, align 4, !dbg !627
  br label %132, !dbg !628, !llvm.loop !629

219:                                              ; preds = %141, %132
  %220 = load %struct.zzzz*, %struct.zzzz** %9, align 4, !dbg !631
  store %struct.zzzz* %220, %struct.zzzz** %10, align 4, !dbg !633
  br label %221, !dbg !634

221:                                              ; preds = %393, %219
  %222 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !635
  %223 = icmp ne %struct.zzzz* %222, null, !dbg !637
  br i1 %223, label %224, label %397, !dbg !638

224:                                              ; preds = %221
  %225 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !639
  %226 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %225, i32 0, i32 0, !dbg !639
  %227 = load i8*, i8** %226, align 4, !dbg !639
  %228 = call i32 @strcmp(i8* %227, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !639
  %229 = icmp eq i32 %228, 0, !dbg !639
  br i1 %229, label %230, label %231, !dbg !642

230:                                              ; preds = %224
  br label %397, !dbg !643

231:                                              ; preds = %224
  %232 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !644
  %233 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %232, i32 0, i32 0, !dbg !644
  %234 = load i8*, i8** %233, align 4, !dbg !644
  %235 = call i32 @strcmp(i8* %234, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)), !dbg !644
  %236 = icmp eq i32 %235, 0, !dbg !644
  br i1 %236, label %237, label %238, !dbg !646

237:                                              ; preds = %231
  store i32 2, i32* @srcMode, align 4, !dbg !647
  br label %392, !dbg !648

238:                                              ; preds = %231
  %239 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !649
  %240 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %239, i32 0, i32 0, !dbg !649
  %241 = load i8*, i8** %240, align 4, !dbg !649
  %242 = call i32 @strcmp(i8* %241, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)), !dbg !649
  %243 = icmp eq i32 %242, 0, !dbg !649
  br i1 %243, label %244, label %245, !dbg !651

244:                                              ; preds = %238
  store i32 2, i32* @opMode, align 4, !dbg !652
  br label %391, !dbg !653

245:                                              ; preds = %238
  %246 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !654
  %247 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %246, i32 0, i32 0, !dbg !654
  %248 = load i8*, i8** %247, align 4, !dbg !654
  %249 = call i32 @strcmp(i8* %248, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0)), !dbg !654
  %250 = icmp eq i32 %249, 0, !dbg !654
  br i1 %250, label %251, label %252, !dbg !656

251:                                              ; preds = %245
  store i32 1, i32* @opMode, align 4, !dbg !657
  br label %390, !dbg !658

252:                                              ; preds = %245
  %253 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !659
  %254 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %253, i32 0, i32 0, !dbg !659
  %255 = load i8*, i8** %254, align 4, !dbg !659
  %256 = call i32 @strcmp(i8* %255, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)), !dbg !659
  %257 = icmp eq i32 %256, 0, !dbg !659
  br i1 %257, label %258, label %259, !dbg !661

258:                                              ; preds = %252
  store i8 1, i8* @forceOverwrite, align 1, !dbg !662
  br label %389, !dbg !663

259:                                              ; preds = %252
  %260 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !664
  %261 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %260, i32 0, i32 0, !dbg !664
  %262 = load i8*, i8** %261, align 4, !dbg !664
  %263 = call i32 @strcmp(i8* %262, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)), !dbg !664
  %264 = icmp eq i32 %263, 0, !dbg !664
  br i1 %264, label %265, label %266, !dbg !666

265:                                              ; preds = %259
  store i32 3, i32* @opMode, align 4, !dbg !667
  br label %388, !dbg !668

266:                                              ; preds = %259
  %267 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !669
  %268 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %267, i32 0, i32 0, !dbg !669
  %269 = load i8*, i8** %268, align 4, !dbg !669
  %270 = call i32 @strcmp(i8* %269, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)), !dbg !669
  %271 = icmp eq i32 %270, 0, !dbg !669
  br i1 %271, label %272, label %273, !dbg !671

272:                                              ; preds = %266
  store i8 1, i8* @keepInputFiles, align 1, !dbg !672
  br label %387, !dbg !673

273:                                              ; preds = %266
  %274 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !674
  %275 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %274, i32 0, i32 0, !dbg !674
  %276 = load i8*, i8** %275, align 4, !dbg !674
  %277 = call i32 @strcmp(i8* %276, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0)), !dbg !674
  %278 = icmp eq i32 %277, 0, !dbg !674
  br i1 %278, label %279, label %280, !dbg !676

279:                                              ; preds = %273
  store i8 1, i8* @smallMode, align 1, !dbg !677
  br label %386, !dbg !678

280:                                              ; preds = %273
  %281 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !679
  %282 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %281, i32 0, i32 0, !dbg !679
  %283 = load i8*, i8** %282, align 4, !dbg !679
  %284 = call i32 @strcmp(i8* %283, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)), !dbg !679
  %285 = icmp eq i32 %284, 0, !dbg !679
  br i1 %285, label %286, label %287, !dbg !681

286:                                              ; preds = %280
  store i8 0, i8* @noisy, align 1, !dbg !682
  br label %385, !dbg !683

287:                                              ; preds = %280
  %288 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !684
  %289 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %288, i32 0, i32 0, !dbg !684
  %290 = load i8*, i8** %289, align 4, !dbg !684
  %291 = call i32 @strcmp(i8* %290, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0)), !dbg !684
  %292 = icmp eq i32 %291, 0, !dbg !684
  br i1 %292, label %293, label %294, !dbg !686

293:                                              ; preds = %287
  call void @license(), !dbg !687
  br label %384, !dbg !687

294:                                              ; preds = %287
  %295 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !688
  %296 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %295, i32 0, i32 0, !dbg !688
  %297 = load i8*, i8** %296, align 4, !dbg !688
  %298 = call i32 @strcmp(i8* %297, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0)), !dbg !688
  %299 = icmp eq i32 %298, 0, !dbg !688
  br i1 %299, label %300, label %301, !dbg !690

300:                                              ; preds = %294
  call void @license(), !dbg !691
  br label %383, !dbg !691

301:                                              ; preds = %294
  %302 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !692
  %303 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %302, i32 0, i32 0, !dbg !692
  %304 = load i8*, i8** %303, align 4, !dbg !692
  %305 = call i32 @strcmp(i8* %304, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0)), !dbg !692
  %306 = icmp eq i32 %305, 0, !dbg !692
  br i1 %306, label %307, label %308, !dbg !694

307:                                              ; preds = %301
  store i32 1, i32* @workFactor, align 4, !dbg !695
  br label %382, !dbg !696

308:                                              ; preds = %301
  %309 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !697
  %310 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %309, i32 0, i32 0, !dbg !697
  %311 = load i8*, i8** %310, align 4, !dbg !697
  %312 = call i32 @strcmp(i8* %311, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0)), !dbg !697
  %313 = icmp eq i32 %312, 0, !dbg !697
  br i1 %313, label %314, label %318, !dbg !699

314:                                              ; preds = %308
  %315 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !700
  %316 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %315, i32 0, i32 0, !dbg !701
  %317 = load i8*, i8** %316, align 4, !dbg !701
  call void @redundant(i8* %317), !dbg !702
  br label %381, !dbg !702

318:                                              ; preds = %308
  %319 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !703
  %320 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %319, i32 0, i32 0, !dbg !703
  %321 = load i8*, i8** %320, align 4, !dbg !703
  %322 = call i32 @strcmp(i8* %321, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0)), !dbg !703
  %323 = icmp eq i32 %322, 0, !dbg !703
  br i1 %323, label %324, label %328, !dbg !705

324:                                              ; preds = %318
  %325 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !706
  %326 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %325, i32 0, i32 0, !dbg !707
  %327 = load i8*, i8** %326, align 4, !dbg !707
  call void @redundant(i8* %327), !dbg !708
  br label %380, !dbg !708

328:                                              ; preds = %318
  %329 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !709
  %330 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %329, i32 0, i32 0, !dbg !709
  %331 = load i8*, i8** %330, align 4, !dbg !709
  %332 = call i32 @strcmp(i8* %331, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0)), !dbg !709
  %333 = icmp eq i32 %332, 0, !dbg !709
  br i1 %333, label %334, label %335, !dbg !711

334:                                              ; preds = %328
  store i32 1, i32* @blockSize100k, align 4, !dbg !712
  br label %379, !dbg !713

335:                                              ; preds = %328
  %336 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !714
  %337 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %336, i32 0, i32 0, !dbg !714
  %338 = load i8*, i8** %337, align 4, !dbg !714
  %339 = call i32 @strcmp(i8* %338, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0)), !dbg !714
  %340 = icmp eq i32 %339, 0, !dbg !714
  br i1 %340, label %341, label %342, !dbg !716

341:                                              ; preds = %335
  store i32 9, i32* @blockSize100k, align 4, !dbg !717
  br label %378, !dbg !718

342:                                              ; preds = %335
  %343 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !719
  %344 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %343, i32 0, i32 0, !dbg !719
  %345 = load i8*, i8** %344, align 4, !dbg !719
  %346 = call i32 @strcmp(i8* %345, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)), !dbg !719
  %347 = icmp eq i32 %346, 0, !dbg !719
  br i1 %347, label %348, label %351, !dbg !721

348:                                              ; preds = %342
  %349 = load i32, i32* @verbosity, align 4, !dbg !722
  %350 = add nsw i32 %349, 1, !dbg !722
  store i32 %350, i32* @verbosity, align 4, !dbg !722
  br label %377, !dbg !723

351:                                              ; preds = %342
  %352 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !724
  %353 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %352, i32 0, i32 0, !dbg !724
  %354 = load i8*, i8** %353, align 4, !dbg !724
  %355 = call i32 @strcmp(i8* %354, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0)), !dbg !724
  %356 = icmp eq i32 %355, 0, !dbg !724
  br i1 %356, label %357, label %359, !dbg !726

357:                                              ; preds = %351
  %358 = load i8*, i8** @progName, align 4, !dbg !727
  call void @usage(i8* %358), !dbg !729
  call void @exit(i32 0) #7, !dbg !730
  unreachable, !dbg !730

359:                                              ; preds = %351
  %360 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !731
  %361 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %360, i32 0, i32 0, !dbg !733
  %362 = load i8*, i8** %361, align 4, !dbg !733
  %363 = call i32 @strncmp(i8* %362, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 2), !dbg !734
  %364 = icmp eq i32 %363, 0, !dbg !735
  br i1 %364, label %365, label %375, !dbg !736

365:                                              ; preds = %359
  %366 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !737
  %367 = getelementptr inbounds %struct._reent, %struct._reent* %366, i32 0, i32 3, !dbg !737
  %368 = load %struct.__sFILE*, %struct.__sFILE** %367, align 4, !dbg !737
  %369 = load i8*, i8** @progName, align 4, !dbg !739
  %370 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !740
  %371 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %370, i32 0, i32 0, !dbg !741
  %372 = load i8*, i8** %371, align 4, !dbg !741
  %373 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %368, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* %369, i8* %372), !dbg !742
  %374 = load i8*, i8** @progName, align 4, !dbg !743
  call void @usage(i8* %374), !dbg !744
  call void @exit(i32 1) #7, !dbg !745
  unreachable, !dbg !745

375:                                              ; preds = %359
  br label %376

376:                                              ; preds = %375
  br label %377

377:                                              ; preds = %376, %348
  br label %378

378:                                              ; preds = %377, %341
  br label %379

379:                                              ; preds = %378, %334
  br label %380

380:                                              ; preds = %379, %324
  br label %381

381:                                              ; preds = %380, %314
  br label %382

382:                                              ; preds = %381, %307
  br label %383

383:                                              ; preds = %382, %300
  br label %384

384:                                              ; preds = %383, %293
  br label %385

385:                                              ; preds = %384, %286
  br label %386

386:                                              ; preds = %385, %279
  br label %387

387:                                              ; preds = %386, %272
  br label %388

388:                                              ; preds = %387, %265
  br label %389

389:                                              ; preds = %388, %258
  br label %390

390:                                              ; preds = %389, %251
  br label %391

391:                                              ; preds = %390, %244
  br label %392

392:                                              ; preds = %391, %237
  br label %393, !dbg !746

393:                                              ; preds = %392
  %394 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !747
  %395 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %394, i32 0, i32 1, !dbg !748
  %396 = load %struct.zzzz*, %struct.zzzz** %395, align 4, !dbg !748
  store %struct.zzzz* %396, %struct.zzzz** %10, align 4, !dbg !749
  br label %221, !dbg !750, !llvm.loop !751

397:                                              ; preds = %230, %221
  %398 = load i32, i32* @verbosity, align 4, !dbg !753
  %399 = icmp sgt i32 %398, 4, !dbg !755
  br i1 %399, label %400, label %401, !dbg !756

400:                                              ; preds = %397
  store i32 4, i32* @verbosity, align 4, !dbg !757
  br label %401, !dbg !758

401:                                              ; preds = %400, %397
  %402 = load i32, i32* @opMode, align 4, !dbg !759
  %403 = icmp eq i32 %402, 1, !dbg !761
  br i1 %403, label %404, label %412, !dbg !762

404:                                              ; preds = %401
  %405 = load i8, i8* @smallMode, align 1, !dbg !763
  %406 = zext i8 %405 to i32, !dbg !763
  %407 = icmp ne i32 %406, 0, !dbg !763
  br i1 %407, label %408, label %412, !dbg !764

408:                                              ; preds = %404
  %409 = load i32, i32* @blockSize100k, align 4, !dbg !765
  %410 = icmp sgt i32 %409, 2, !dbg !766
  br i1 %410, label %411, label %412, !dbg !767

411:                                              ; preds = %408
  store i32 2, i32* @blockSize100k, align 4, !dbg !768
  br label %412, !dbg !769

412:                                              ; preds = %411, %408, %404, %401
  %413 = load i32, i32* @opMode, align 4, !dbg !770
  %414 = icmp eq i32 %413, 3, !dbg !772
  br i1 %414, label %415, label %424, !dbg !773

415:                                              ; preds = %412
  %416 = load i32, i32* @srcMode, align 4, !dbg !774
  %417 = icmp eq i32 %416, 2, !dbg !775
  br i1 %417, label %418, label %424, !dbg !776

418:                                              ; preds = %415
  %419 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !777
  %420 = getelementptr inbounds %struct._reent, %struct._reent* %419, i32 0, i32 3, !dbg !777
  %421 = load %struct.__sFILE*, %struct.__sFILE** %420, align 4, !dbg !777
  %422 = load i8*, i8** @progName, align 4, !dbg !779
  %423 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %421, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i32 0, i32 0), i8* %422), !dbg !780
  call void @exit(i32 1) #7, !dbg !781
  unreachable, !dbg !781

424:                                              ; preds = %415, %412
  %425 = load i32, i32* @srcMode, align 4, !dbg !782
  %426 = icmp eq i32 %425, 2, !dbg !784
  br i1 %426, label %427, label %431, !dbg !785

427:                                              ; preds = %424
  %428 = load i32, i32* @numFileNames, align 4, !dbg !786
  %429 = icmp eq i32 %428, 0, !dbg !787
  br i1 %429, label %430, label %431, !dbg !788

430:                                              ; preds = %427
  store i32 1, i32* @srcMode, align 4, !dbg !789
  br label %431, !dbg !790

431:                                              ; preds = %430, %427, %424
  %432 = load i32, i32* @opMode, align 4, !dbg !791
  %433 = icmp ne i32 %432, 1, !dbg !793
  br i1 %433, label %434, label %435, !dbg !794

434:                                              ; preds = %431
  store i32 0, i32* @blockSize100k, align 4, !dbg !795
  br label %435, !dbg !796

435:                                              ; preds = %434, %431
  %436 = load i32, i32* @srcMode, align 4, !dbg !797
  %437 = icmp eq i32 %436, 3, !dbg !799
  br i1 %437, label %438, label %442, !dbg !800

438:                                              ; preds = %435
  %439 = call void (i32)* @signal(i32 2, void (i32)* @mySignalCatcher), !dbg !801
  %440 = call void (i32)* @signal(i32 15, void (i32)* @mySignalCatcher), !dbg !803
  %441 = call void (i32)* @signal(i32 1, void (i32)* @mySignalCatcher), !dbg !804
  br label %442, !dbg !805

442:                                              ; preds = %438, %435
  %443 = load i32, i32* @opMode, align 4, !dbg !806
  %444 = icmp eq i32 %443, 1, !dbg !808
  br i1 %444, label %445, label %486, !dbg !809

445:                                              ; preds = %442
  %446 = load i32, i32* @srcMode, align 4, !dbg !810
  %447 = icmp eq i32 %446, 1, !dbg !813
  br i1 %447, label %448, label %449, !dbg !814

448:                                              ; preds = %445
  call void @compress(i8* null), !dbg !815
  br label %485, !dbg !817

449:                                              ; preds = %445
  store i8 1, i8* %11, align 1, !dbg !818
  %450 = load %struct.zzzz*, %struct.zzzz** %9, align 4, !dbg !820
  store %struct.zzzz* %450, %struct.zzzz** %10, align 4, !dbg !822
  br label %451, !dbg !823

451:                                              ; preds = %480, %449
  %452 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !824
  %453 = icmp ne %struct.zzzz* %452, null, !dbg !826
  br i1 %453, label %454, label %484, !dbg !827

454:                                              ; preds = %451
  %455 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !828
  %456 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %455, i32 0, i32 0, !dbg !828
  %457 = load i8*, i8** %456, align 4, !dbg !828
  %458 = call i32 @strcmp(i8* %457, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !828
  %459 = icmp eq i32 %458, 0, !dbg !828
  br i1 %459, label %460, label %461, !dbg !831

460:                                              ; preds = %454
  store i8 0, i8* %11, align 1, !dbg !832
  br label %480, !dbg !834

461:                                              ; preds = %454
  %462 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !835
  %463 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %462, i32 0, i32 0, !dbg !837
  %464 = load i8*, i8** %463, align 4, !dbg !837
  %465 = getelementptr inbounds i8, i8* %464, i32 0, !dbg !835
  %466 = load i8, i8* %465, align 1, !dbg !835
  %467 = zext i8 %466 to i32, !dbg !835
  %468 = icmp eq i32 %467, 45, !dbg !838
  br i1 %468, label %469, label %474, !dbg !839

469:                                              ; preds = %461
  %470 = load i8, i8* %11, align 1, !dbg !840
  %471 = zext i8 %470 to i32, !dbg !840
  %472 = icmp ne i32 %471, 0, !dbg !840
  br i1 %472, label %473, label %474, !dbg !841

473:                                              ; preds = %469
  br label %480, !dbg !842

474:                                              ; preds = %469, %461
  %475 = load i32, i32* @numFilesProcessed, align 4, !dbg !843
  %476 = add nsw i32 %475, 1, !dbg !843
  store i32 %476, i32* @numFilesProcessed, align 4, !dbg !843
  %477 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !844
  %478 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %477, i32 0, i32 0, !dbg !845
  %479 = load i8*, i8** %478, align 4, !dbg !845
  call void @compress(i8* %479), !dbg !846
  br label %480, !dbg !847

480:                                              ; preds = %474, %473, %460
  %481 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !848
  %482 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %481, i32 0, i32 1, !dbg !849
  %483 = load %struct.zzzz*, %struct.zzzz** %482, align 4, !dbg !849
  store %struct.zzzz* %483, %struct.zzzz** %10, align 4, !dbg !850
  br label %451, !dbg !851, !llvm.loop !852

484:                                              ; preds = %451
  br label %485

485:                                              ; preds = %484, %448
  br label %590, !dbg !854

486:                                              ; preds = %442
  %487 = load i32, i32* @opMode, align 4, !dbg !855
  %488 = icmp eq i32 %487, 2, !dbg !857
  br i1 %488, label %489, label %535, !dbg !858

489:                                              ; preds = %486
  store i8 0, i8* @unzFailsExist, align 1, !dbg !859
  %490 = load i32, i32* @srcMode, align 4, !dbg !861
  %491 = icmp eq i32 %490, 1, !dbg !863
  br i1 %491, label %492, label %493, !dbg !864

492:                                              ; preds = %489
  call void @uncompress(i8* null), !dbg !865
  br label %529, !dbg !867

493:                                              ; preds = %489
  store i8 1, i8* %11, align 1, !dbg !868
  %494 = load %struct.zzzz*, %struct.zzzz** %9, align 4, !dbg !870
  store %struct.zzzz* %494, %struct.zzzz** %10, align 4, !dbg !872
  br label %495, !dbg !873

495:                                              ; preds = %524, %493
  %496 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !874
  %497 = icmp ne %struct.zzzz* %496, null, !dbg !876
  br i1 %497, label %498, label %528, !dbg !877

498:                                              ; preds = %495
  %499 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !878
  %500 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %499, i32 0, i32 0, !dbg !878
  %501 = load i8*, i8** %500, align 4, !dbg !878
  %502 = call i32 @strcmp(i8* %501, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !878
  %503 = icmp eq i32 %502, 0, !dbg !878
  br i1 %503, label %504, label %505, !dbg !881

504:                                              ; preds = %498
  store i8 0, i8* %11, align 1, !dbg !882
  br label %524, !dbg !884

505:                                              ; preds = %498
  %506 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !885
  %507 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %506, i32 0, i32 0, !dbg !887
  %508 = load i8*, i8** %507, align 4, !dbg !887
  %509 = getelementptr inbounds i8, i8* %508, i32 0, !dbg !885
  %510 = load i8, i8* %509, align 1, !dbg !885
  %511 = zext i8 %510 to i32, !dbg !885
  %512 = icmp eq i32 %511, 45, !dbg !888
  br i1 %512, label %513, label %518, !dbg !889

513:                                              ; preds = %505
  %514 = load i8, i8* %11, align 1, !dbg !890
  %515 = zext i8 %514 to i32, !dbg !890
  %516 = icmp ne i32 %515, 0, !dbg !890
  br i1 %516, label %517, label %518, !dbg !891

517:                                              ; preds = %513
  br label %524, !dbg !892

518:                                              ; preds = %513, %505
  %519 = load i32, i32* @numFilesProcessed, align 4, !dbg !893
  %520 = add nsw i32 %519, 1, !dbg !893
  store i32 %520, i32* @numFilesProcessed, align 4, !dbg !893
  %521 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !894
  %522 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %521, i32 0, i32 0, !dbg !895
  %523 = load i8*, i8** %522, align 4, !dbg !895
  call void @uncompress(i8* %523), !dbg !896
  br label %524, !dbg !897

524:                                              ; preds = %518, %517, %504
  %525 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !898
  %526 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %525, i32 0, i32 1, !dbg !899
  %527 = load %struct.zzzz*, %struct.zzzz** %526, align 4, !dbg !899
  store %struct.zzzz* %527, %struct.zzzz** %10, align 4, !dbg !900
  br label %495, !dbg !901, !llvm.loop !902

528:                                              ; preds = %495
  br label %529

529:                                              ; preds = %528, %492
  %530 = load i8, i8* @unzFailsExist, align 1, !dbg !904
  %531 = icmp ne i8 %530, 0, !dbg !904
  br i1 %531, label %532, label %534, !dbg !906

532:                                              ; preds = %529
  call void @setExit(i32 2), !dbg !907
  %533 = load i32, i32* @exitValue, align 4, !dbg !909
  call void @exit(i32 %533) #7, !dbg !910
  unreachable, !dbg !910

534:                                              ; preds = %529
  br label %589, !dbg !911

535:                                              ; preds = %486
  store i8 0, i8* @testFailsExist, align 1, !dbg !912
  %536 = load i32, i32* @srcMode, align 4, !dbg !914
  %537 = icmp eq i32 %536, 1, !dbg !916
  br i1 %537, label %538, label %539, !dbg !917

538:                                              ; preds = %535
  call void @testf(i8* null), !dbg !918
  br label %575, !dbg !920

539:                                              ; preds = %535
  store i8 1, i8* %11, align 1, !dbg !921
  %540 = load %struct.zzzz*, %struct.zzzz** %9, align 4, !dbg !923
  store %struct.zzzz* %540, %struct.zzzz** %10, align 4, !dbg !925
  br label %541, !dbg !926

541:                                              ; preds = %570, %539
  %542 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !927
  %543 = icmp ne %struct.zzzz* %542, null, !dbg !929
  br i1 %543, label %544, label %574, !dbg !930

544:                                              ; preds = %541
  %545 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !931
  %546 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %545, i32 0, i32 0, !dbg !931
  %547 = load i8*, i8** %546, align 4, !dbg !931
  %548 = call i32 @strcmp(i8* %547, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !931
  %549 = icmp eq i32 %548, 0, !dbg !931
  br i1 %549, label %550, label %551, !dbg !934

550:                                              ; preds = %544
  store i8 0, i8* %11, align 1, !dbg !935
  br label %570, !dbg !937

551:                                              ; preds = %544
  %552 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !938
  %553 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %552, i32 0, i32 0, !dbg !940
  %554 = load i8*, i8** %553, align 4, !dbg !940
  %555 = getelementptr inbounds i8, i8* %554, i32 0, !dbg !938
  %556 = load i8, i8* %555, align 1, !dbg !938
  %557 = zext i8 %556 to i32, !dbg !938
  %558 = icmp eq i32 %557, 45, !dbg !941
  br i1 %558, label %559, label %564, !dbg !942

559:                                              ; preds = %551
  %560 = load i8, i8* %11, align 1, !dbg !943
  %561 = zext i8 %560 to i32, !dbg !943
  %562 = icmp ne i32 %561, 0, !dbg !943
  br i1 %562, label %563, label %564, !dbg !944

563:                                              ; preds = %559
  br label %570, !dbg !945

564:                                              ; preds = %559, %551
  %565 = load i32, i32* @numFilesProcessed, align 4, !dbg !946
  %566 = add nsw i32 %565, 1, !dbg !946
  store i32 %566, i32* @numFilesProcessed, align 4, !dbg !946
  %567 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !947
  %568 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %567, i32 0, i32 0, !dbg !948
  %569 = load i8*, i8** %568, align 4, !dbg !948
  call void @testf(i8* %569), !dbg !949
  br label %570, !dbg !950

570:                                              ; preds = %564, %563, %550
  %571 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !951
  %572 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %571, i32 0, i32 1, !dbg !952
  %573 = load %struct.zzzz*, %struct.zzzz** %572, align 4, !dbg !952
  store %struct.zzzz* %573, %struct.zzzz** %10, align 4, !dbg !953
  br label %541, !dbg !954, !llvm.loop !955

574:                                              ; preds = %541
  br label %575

575:                                              ; preds = %574, %538
  %576 = load i8, i8* @testFailsExist, align 1, !dbg !957
  %577 = icmp ne i8 %576, 0, !dbg !957
  br i1 %577, label %578, label %588, !dbg !959

578:                                              ; preds = %575
  %579 = load i8, i8* @noisy, align 1, !dbg !960
  %580 = icmp ne i8 %579, 0, !dbg !960
  br i1 %580, label %581, label %586, !dbg !963

581:                                              ; preds = %578
  %582 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !964
  %583 = getelementptr inbounds %struct._reent, %struct._reent* %582, i32 0, i32 3, !dbg !964
  %584 = load %struct.__sFILE*, %struct.__sFILE** %583, align 4, !dbg !964
  %585 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %584, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.35, i32 0, i32 0)), !dbg !966
  br label %586, !dbg !967

586:                                              ; preds = %581, %578
  call void @setExit(i32 2), !dbg !968
  %587 = load i32, i32* @exitValue, align 4, !dbg !969
  call void @exit(i32 %587) #7, !dbg !970
  unreachable, !dbg !970

588:                                              ; preds = %575
  br label %589

589:                                              ; preds = %588, %534
  br label %590

590:                                              ; preds = %589, %485
  %591 = load %struct.zzzz*, %struct.zzzz** %9, align 4, !dbg !971
  store %struct.zzzz* %591, %struct.zzzz** %10, align 4, !dbg !972
  br label %592, !dbg !973

592:                                              ; preds = %607, %590
  %593 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !974
  %594 = icmp ne %struct.zzzz* %593, null, !dbg !975
  br i1 %594, label %595, label %611, !dbg !973

595:                                              ; preds = %592
  call void @llvm.dbg.declare(metadata %struct.zzzz** %12, metadata !976, metadata !DIExpression()), !dbg !978
  %596 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !979
  %597 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %596, i32 0, i32 1, !dbg !980
  %598 = load %struct.zzzz*, %struct.zzzz** %597, align 4, !dbg !980
  store %struct.zzzz* %598, %struct.zzzz** %12, align 4, !dbg !978
  %599 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !981
  %600 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %599, i32 0, i32 0, !dbg !983
  %601 = load i8*, i8** %600, align 4, !dbg !983
  %602 = icmp ne i8* %601, null, !dbg !984
  br i1 %602, label %603, label %607, !dbg !985

603:                                              ; preds = %595
  %604 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !986
  %605 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %604, i32 0, i32 0, !dbg !987
  %606 = load i8*, i8** %605, align 4, !dbg !987
  call void @free(i8* %606), !dbg !988
  br label %607, !dbg !988

607:                                              ; preds = %603, %595
  %608 = load %struct.zzzz*, %struct.zzzz** %10, align 4, !dbg !989
  %609 = bitcast %struct.zzzz* %608 to i8*, !dbg !989
  call void @free(i8* %609), !dbg !990
  %610 = load %struct.zzzz*, %struct.zzzz** %12, align 4, !dbg !991
  store %struct.zzzz* %610, %struct.zzzz** %10, align 4, !dbg !992
  br label %592, !dbg !973, !llvm.loop !993

611:                                              ; preds = %592
  %612 = load i32, i32* @exitValue, align 4, !dbg !995
  ret i32 %612, !dbg !996
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: noinline nounwind optnone
define internal void @mySIGSEGVorSIGBUScatcher(i32 %0) #0 !dbg !997 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1000, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1002, metadata !DIExpression()), !dbg !1003
  %4 = load i32, i32* @opMode, align 4, !dbg !1004
  %5 = icmp eq i32 %4, 1, !dbg !1006
  br i1 %5, label %6, label %7, !dbg !1007

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([870 x i8], [870 x i8]* @.str.36, i32 0, i32 0), i8** %3, align 4, !dbg !1008
  br label %8, !dbg !1009

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([997 x i8], [997 x i8]* @.str.37, i32 0, i32 0), i8** %3, align 4, !dbg !1010
  br label %8

8:                                                ; preds = %7, %6
  %9 = call i32 @write(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i32 1), !dbg !1011
  %10 = load i8*, i8** @progName, align 4, !dbg !1012
  %11 = load i8*, i8** @progName, align 4, !dbg !1013
  %12 = call i32 @strlen(i8* %11), !dbg !1014
  %13 = call i32 @write(i32 2, i8* %10, i32 %12), !dbg !1015
  %14 = load i8*, i8** %3, align 4, !dbg !1016
  %15 = load i8*, i8** %3, align 4, !dbg !1017
  %16 = call i32 @strlen(i8* %15), !dbg !1018
  %17 = call i32 @write(i32 2, i8* %14, i32 %16), !dbg !1019
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i8** %3, align 4, !dbg !1020
  %18 = load i8*, i8** %3, align 4, !dbg !1021
  %19 = load i8*, i8** %3, align 4, !dbg !1022
  %20 = call i32 @strlen(i8* %19), !dbg !1023
  %21 = call i32 @write(i32 2, i8* %18, i32 %20), !dbg !1024
  %22 = call i32 @strlen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1025
  %23 = call i32 @write(i32 2, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i32 %22), !dbg !1026
  %24 = call i32 @write(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i32 1), !dbg !1027
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), i8** %3, align 4, !dbg !1028
  %25 = load i8*, i8** %3, align 4, !dbg !1029
  %26 = load i8*, i8** %3, align 4, !dbg !1030
  %27 = call i32 @strlen(i8* %26), !dbg !1031
  %28 = call i32 @write(i32 2, i8* %25, i32 %27), !dbg !1032
  %29 = call i32 @strlen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !1033
  %30 = call i32 @write(i32 2, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i32 %29), !dbg !1034
  %31 = call i32 @write(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0), i32 1), !dbg !1035
  %32 = load i32, i32* @opMode, align 4, !dbg !1036
  %33 = icmp eq i32 %32, 1, !dbg !1038
  br i1 %33, label %34, label %35, !dbg !1039

34:                                               ; preds = %8
  call void @setExit(i32 3), !dbg !1040
  br label %36, !dbg !1040

35:                                               ; preds = %8
  call void @setExit(i32 2), !dbg !1041
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* @exitValue, align 4, !dbg !1042
  call void @_exit(i32 %37) #7, !dbg !1043
  unreachable, !dbg !1043
}

; Function Attrs: noinline nounwind optnone
define internal void @copyFileName(i8* %0, i8* %1) #0 !dbg !1044 {
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1047, metadata !DIExpression()), !dbg !1048
  store i8* %1, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1049, metadata !DIExpression()), !dbg !1050
  %5 = load i8*, i8** %4, align 4, !dbg !1051
  %6 = call i32 @strlen(i8* %5), !dbg !1053
  %7 = icmp ugt i32 %6, 1024, !dbg !1054
  br i1 %7, label %8, label %15, !dbg !1055

8:                                                ; preds = %2
  %9 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1056
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %9, i32 0, i32 3, !dbg !1056
  %11 = load %struct.__sFILE*, %struct.__sFILE** %10, align 4, !dbg !1056
  %12 = load i8*, i8** %4, align 4, !dbg !1058
  %13 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %11, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.41, i32 0, i32 0), i8* %12, i32 1024), !dbg !1059
  call void @setExit(i32 1), !dbg !1060
  %14 = load i32, i32* @exitValue, align 4, !dbg !1061
  call void @exit(i32 %14) #7, !dbg !1062
  unreachable, !dbg !1062

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 4, !dbg !1063
  %17 = load i8*, i8** %4, align 4, !dbg !1064
  %18 = call i8* @strncpy(i8* %16, i8* %17, i32 1024), !dbg !1065
  %19 = load i8*, i8** %3, align 4, !dbg !1066
  %20 = getelementptr inbounds i8, i8* %19, i32 1024, !dbg !1066
  store i8 0, i8* %20, align 1, !dbg !1067
  ret void, !dbg !1068
}

; Function Attrs: noinline nounwind optnone
define internal void @addFlagsFromEnvVar(%struct.zzzz** %0, i8* %1) #0 !dbg !1069 {
  %3 = alloca %struct.zzzz**, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 4
  %9 = alloca i8*, align 4
  store %struct.zzzz** %0, %struct.zzzz*** %3, align 4
  call void @llvm.dbg.declare(metadata %struct.zzzz*** %3, metadata !1073, metadata !DIExpression()), !dbg !1074
  store i8* %1, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1075, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1077, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1079, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1081, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1083, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1085, metadata !DIExpression()), !dbg !1086
  %10 = load i8*, i8** %4, align 4, !dbg !1087
  %11 = call i8* @getenv(i8* %10), !dbg !1088
  store i8* %11, i8** %8, align 4, !dbg !1089
  %12 = load i8*, i8** %8, align 4, !dbg !1090
  %13 = icmp ne i8* %12, null, !dbg !1092
  br i1 %13, label %14, label %98, !dbg !1093

14:                                               ; preds = %2
  %15 = load i8*, i8** %8, align 4, !dbg !1094
  store i8* %15, i8** %9, align 4, !dbg !1096
  store i32 0, i32* %5, align 4, !dbg !1097
  br label %16, !dbg !1098

16:                                               ; preds = %14, %96
  %17 = load i8*, i8** %9, align 4, !dbg !1099
  %18 = load i32, i32* %5, align 4, !dbg !1102
  %19 = getelementptr inbounds i8, i8* %17, i32 %18, !dbg !1099
  %20 = load i8, i8* %19, align 1, !dbg !1099
  %21 = zext i8 %20 to i32, !dbg !1099
  %22 = icmp eq i32 %21, 0, !dbg !1103
  br i1 %22, label %23, label %24, !dbg !1104

23:                                               ; preds = %16
  br label %97, !dbg !1105

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4, !dbg !1106
  %26 = load i8*, i8** %9, align 4, !dbg !1107
  %27 = getelementptr inbounds i8, i8* %26, i32 %25, !dbg !1107
  store i8* %27, i8** %9, align 4, !dbg !1107
  store i32 0, i32* %5, align 4, !dbg !1108
  br label %28, !dbg !1109

28:                                               ; preds = %38, %24
  %29 = load i8*, i8** %9, align 4, !dbg !1110
  %30 = getelementptr inbounds i8, i8* %29, i32 0, !dbg !1110
  %31 = load i8, i8* %30, align 1, !dbg !1110
  %32 = zext i8 %31 to i32, !dbg !1110
  %33 = getelementptr inbounds i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_ctype_, i32 0, i32 1), i32 %32, !dbg !1110
  %34 = load i8, i8* %33, align 1, !dbg !1110
  %35 = zext i8 %34 to i32, !dbg !1110
  %36 = and i32 %35, 8, !dbg !1110
  %37 = icmp ne i32 %36, 0, !dbg !1109
  br i1 %37, label %38, label %41, !dbg !1109

38:                                               ; preds = %28
  %39 = load i8*, i8** %9, align 4, !dbg !1111
  %40 = getelementptr inbounds i8, i8* %39, i32 1, !dbg !1111
  store i8* %40, i8** %9, align 4, !dbg !1111
  br label %28, !dbg !1109, !llvm.loop !1112

41:                                               ; preds = %28
  br label %42, !dbg !1113

42:                                               ; preds = %63, %41
  %43 = load i8*, i8** %9, align 4, !dbg !1114
  %44 = load i32, i32* %5, align 4, !dbg !1115
  %45 = getelementptr inbounds i8, i8* %43, i32 %44, !dbg !1114
  %46 = load i8, i8* %45, align 1, !dbg !1114
  %47 = zext i8 %46 to i32, !dbg !1114
  %48 = icmp ne i32 %47, 0, !dbg !1116
  br i1 %48, label %49, label %61, !dbg !1117

49:                                               ; preds = %42
  %50 = load i8*, i8** %9, align 4, !dbg !1118
  %51 = load i32, i32* %5, align 4, !dbg !1118
  %52 = getelementptr inbounds i8, i8* %50, i32 %51, !dbg !1118
  %53 = load i8, i8* %52, align 1, !dbg !1118
  %54 = zext i8 %53 to i32, !dbg !1118
  %55 = getelementptr inbounds i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_ctype_, i32 0, i32 1), i32 %54, !dbg !1118
  %56 = load i8, i8* %55, align 1, !dbg !1118
  %57 = zext i8 %56 to i32, !dbg !1118
  %58 = and i32 %57, 8, !dbg !1118
  %59 = icmp ne i32 %58, 0, !dbg !1119
  %60 = xor i1 %59, true, !dbg !1119
  br label %61

61:                                               ; preds = %49, %42
  %62 = phi i1 [ false, %42 ], [ %60, %49 ], !dbg !1120
  br i1 %62, label %63, label %66, !dbg !1113

63:                                               ; preds = %61
  %64 = load i32, i32* %5, align 4, !dbg !1121
  %65 = add nsw i32 %64, 1, !dbg !1121
  store i32 %65, i32* %5, align 4, !dbg !1121
  br label %42, !dbg !1113, !llvm.loop !1122

66:                                               ; preds = %61
  %67 = load i32, i32* %5, align 4, !dbg !1123
  %68 = icmp sgt i32 %67, 0, !dbg !1125
  br i1 %68, label %69, label %96, !dbg !1126

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4, !dbg !1127
  store i32 %70, i32* %7, align 4, !dbg !1129
  %71 = load i32, i32* %7, align 4, !dbg !1130
  %72 = icmp sgt i32 %71, 1024, !dbg !1132
  br i1 %72, label %73, label %74, !dbg !1133

73:                                               ; preds = %69
  store i32 1024, i32* %7, align 4, !dbg !1134
  br label %74, !dbg !1135

74:                                               ; preds = %73, %69
  store i32 0, i32* %6, align 4, !dbg !1136
  br label %75, !dbg !1138

75:                                               ; preds = %86, %74
  %76 = load i32, i32* %6, align 4, !dbg !1139
  %77 = load i32, i32* %7, align 4, !dbg !1141
  %78 = icmp slt i32 %76, %77, !dbg !1142
  br i1 %78, label %79, label %89, !dbg !1143

79:                                               ; preds = %75
  %80 = load i8*, i8** %9, align 4, !dbg !1144
  %81 = load i32, i32* %6, align 4, !dbg !1145
  %82 = getelementptr inbounds i8, i8* %80, i32 %81, !dbg !1144
  %83 = load i8, i8* %82, align 1, !dbg !1144
  %84 = load i32, i32* %6, align 4, !dbg !1146
  %85 = getelementptr inbounds [1034 x i8], [1034 x i8]* @tmpName, i32 0, i32 %84, !dbg !1147
  store i8 %83, i8* %85, align 1, !dbg !1148
  br label %86, !dbg !1147

86:                                               ; preds = %79
  %87 = load i32, i32* %6, align 4, !dbg !1149
  %88 = add nsw i32 %87, 1, !dbg !1149
  store i32 %88, i32* %6, align 4, !dbg !1149
  br label %75, !dbg !1150, !llvm.loop !1151

89:                                               ; preds = %75
  %90 = load i32, i32* %7, align 4, !dbg !1153
  %91 = getelementptr inbounds [1034 x i8], [1034 x i8]* @tmpName, i32 0, i32 %90, !dbg !1154
  store i8 0, i8* %91, align 1, !dbg !1155
  %92 = load %struct.zzzz**, %struct.zzzz*** %3, align 4, !dbg !1156
  %93 = load %struct.zzzz*, %struct.zzzz** %92, align 4, !dbg !1156
  %94 = call %struct.zzzz* @snocString(%struct.zzzz* %93, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @tmpName, i32 0, i32 0)), !dbg !1156
  %95 = load %struct.zzzz**, %struct.zzzz*** %3, align 4, !dbg !1156
  store %struct.zzzz* %94, %struct.zzzz** %95, align 4, !dbg !1156
  br label %96, !dbg !1157

96:                                               ; preds = %89, %66
  br label %16, !dbg !1098, !llvm.loop !1158

97:                                               ; preds = %23
  br label %98, !dbg !1160

98:                                               ; preds = %97, %2
  ret void, !dbg !1161
}

; Function Attrs: noinline nounwind optnone
define internal %struct.zzzz* @snocString(%struct.zzzz* %0, i8* %1) #0 !dbg !1162 {
  %3 = alloca %struct.zzzz*, align 4
  %4 = alloca %struct.zzzz*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca %struct.zzzz*, align 4
  %7 = alloca %struct.zzzz*, align 4
  store %struct.zzzz* %0, %struct.zzzz** %4, align 4
  call void @llvm.dbg.declare(metadata %struct.zzzz** %4, metadata !1165, metadata !DIExpression()), !dbg !1166
  store i8* %1, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1167, metadata !DIExpression()), !dbg !1168
  %8 = load %struct.zzzz*, %struct.zzzz** %4, align 4, !dbg !1169
  %9 = icmp eq %struct.zzzz* %8, null, !dbg !1171
  br i1 %9, label %10, label %24, !dbg !1172

10:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.zzzz** %6, metadata !1173, metadata !DIExpression()), !dbg !1175
  %11 = call %struct.zzzz* @mkCell(), !dbg !1176
  store %struct.zzzz* %11, %struct.zzzz** %6, align 4, !dbg !1175
  %12 = load i8*, i8** %5, align 4, !dbg !1177
  %13 = call i32 @strlen(i8* %12), !dbg !1178
  %14 = add i32 5, %13, !dbg !1179
  %15 = call i8* @myMalloc(i32 %14), !dbg !1180
  %16 = load %struct.zzzz*, %struct.zzzz** %6, align 4, !dbg !1181
  %17 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %16, i32 0, i32 0, !dbg !1182
  store i8* %15, i8** %17, align 4, !dbg !1183
  %18 = load %struct.zzzz*, %struct.zzzz** %6, align 4, !dbg !1184
  %19 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %18, i32 0, i32 0, !dbg !1185
  %20 = load i8*, i8** %19, align 4, !dbg !1185
  %21 = load i8*, i8** %5, align 4, !dbg !1186
  %22 = call i8* @strcpy(i8* %20, i8* %21), !dbg !1187
  %23 = load %struct.zzzz*, %struct.zzzz** %6, align 4, !dbg !1188
  store %struct.zzzz* %23, %struct.zzzz** %3, align 4, !dbg !1189
  br label %44, !dbg !1189

24:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.zzzz** %7, metadata !1190, metadata !DIExpression()), !dbg !1192
  %25 = load %struct.zzzz*, %struct.zzzz** %4, align 4, !dbg !1193
  store %struct.zzzz* %25, %struct.zzzz** %7, align 4, !dbg !1192
  br label %26, !dbg !1194

26:                                               ; preds = %31, %24
  %27 = load %struct.zzzz*, %struct.zzzz** %7, align 4, !dbg !1195
  %28 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %27, i32 0, i32 1, !dbg !1196
  %29 = load %struct.zzzz*, %struct.zzzz** %28, align 4, !dbg !1196
  %30 = icmp ne %struct.zzzz* %29, null, !dbg !1197
  br i1 %30, label %31, label %35, !dbg !1194

31:                                               ; preds = %26
  %32 = load %struct.zzzz*, %struct.zzzz** %7, align 4, !dbg !1198
  %33 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %32, i32 0, i32 1, !dbg !1199
  %34 = load %struct.zzzz*, %struct.zzzz** %33, align 4, !dbg !1199
  store %struct.zzzz* %34, %struct.zzzz** %7, align 4, !dbg !1200
  br label %26, !dbg !1194, !llvm.loop !1201

35:                                               ; preds = %26
  %36 = load %struct.zzzz*, %struct.zzzz** %7, align 4, !dbg !1202
  %37 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %36, i32 0, i32 1, !dbg !1203
  %38 = load %struct.zzzz*, %struct.zzzz** %37, align 4, !dbg !1203
  %39 = load i8*, i8** %5, align 4, !dbg !1204
  %40 = call %struct.zzzz* @snocString(%struct.zzzz* %38, i8* %39), !dbg !1205
  %41 = load %struct.zzzz*, %struct.zzzz** %7, align 4, !dbg !1206
  %42 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %41, i32 0, i32 1, !dbg !1207
  store %struct.zzzz* %40, %struct.zzzz** %42, align 4, !dbg !1208
  %43 = load %struct.zzzz*, %struct.zzzz** %4, align 4, !dbg !1209
  store %struct.zzzz* %43, %struct.zzzz** %3, align 4, !dbg !1210
  br label %44, !dbg !1210

44:                                               ; preds = %35, %10
  %45 = load %struct.zzzz*, %struct.zzzz** %3, align 4, !dbg !1211
  ret %struct.zzzz* %45, !dbg !1211
}

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @strstr(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone
define internal void @license() #0 !dbg !1212 {
  %1 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1213
  %2 = getelementptr inbounds %struct._reent, %struct._reent* %1, i32 0, i32 3, !dbg !1213
  %3 = load %struct.__sFILE*, %struct.__sFILE** %2, align 4, !dbg !1213
  %4 = call i8* @BZ2_bzlibVersion(), !dbg !1214
  %5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([525 x i8], [525 x i8]* @.str.51, i32 0, i32 0), i8* %4), !dbg !1215
  ret void, !dbg !1216
}

; Function Attrs: noinline nounwind optnone
define internal void @usage(i8* %0) #0 !dbg !1217 {
  %2 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1220, metadata !DIExpression()), !dbg !1221
  %3 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1222
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %3, i32 0, i32 3, !dbg !1222
  %5 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !1222
  %6 = call i8* @BZ2_bzlibVersion(), !dbg !1223
  %7 = load i8*, i8** %2, align 4, !dbg !1224
  %8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([1230 x i8], [1230 x i8]* @.str.52, i32 0, i32 0), i8* %6, i8* %7), !dbg !1225
  ret void, !dbg !1226
}

; Function Attrs: noreturn
declare dso_local void @exit(i32) #3

declare dso_local i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone
define internal void @redundant(i8* %0) #0 !dbg !1227 {
  %2 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1228, metadata !DIExpression()), !dbg !1229
  %3 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1230
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %3, i32 0, i32 3, !dbg !1230
  %5 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !1230
  %6 = load i8*, i8** @progName, align 4, !dbg !1231
  %7 = load i8*, i8** %2, align 4, !dbg !1232
  %8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.53, i32 0, i32 0), i8* %6, i8* %7), !dbg !1233
  ret void, !dbg !1234
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define internal void @mySignalCatcher(i32 %0) #0 !dbg !1235 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1236, metadata !DIExpression()), !dbg !1237
  %3 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1238
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %3, i32 0, i32 3, !dbg !1238
  %5 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !1238
  %6 = load i8*, i8** @progName, align 4, !dbg !1239
  %7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.54, i32 0, i32 0), i8* %6), !dbg !1240
  call void @cleanUpAndFail(i32 1) #7, !dbg !1241
  unreachable, !dbg !1241
}

; Function Attrs: noinline nounwind optnone
define internal void @compress(i8* %0) #0 !dbg !1242 {
  %2 = alloca i8*, align 4
  %3 = alloca %struct.__sFILE*, align 4
  %4 = alloca %struct.__sFILE*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1243, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.declare(metadata %struct.__sFILE** %3, metadata !1245, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.declare(metadata %struct.__sFILE** %4, metadata !1247, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1249, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1251, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !1253, metadata !DIExpression()), !dbg !1254
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1255
  %9 = load i8*, i8** %2, align 4, !dbg !1256
  %10 = icmp eq i8* %9, null, !dbg !1258
  br i1 %10, label %11, label %15, !dbg !1259

11:                                               ; preds = %1
  %12 = load i32, i32* @srcMode, align 4, !dbg !1260
  %13 = icmp ne i32 %12, 1, !dbg !1261
  br i1 %13, label %14, label %15, !dbg !1262

14:                                               ; preds = %11
  call void @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0)) #7, !dbg !1263
  unreachable, !dbg !1263

15:                                               ; preds = %11, %1
  %16 = load i32, i32* @srcMode, align 4, !dbg !1264
  switch i32 %16, label %24 [
    i32 1, label %17
    i32 3, label %18
    i32 2, label %22
  ], !dbg !1265

17:                                               ; preds = %15
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0)), !dbg !1266
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0)), !dbg !1268
  br label %24, !dbg !1269

18:                                               ; preds = %15
  %19 = load i8*, i8** %2, align 4, !dbg !1270
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %19), !dbg !1271
  %20 = load i8*, i8** %2, align 4, !dbg !1272
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* %20), !dbg !1273
  %21 = call i8* @strcat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)), !dbg !1274
  br label %24, !dbg !1275

22:                                               ; preds = %15
  %23 = load i8*, i8** %2, align 4, !dbg !1276
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %23), !dbg !1277
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0)), !dbg !1278
  br label %24, !dbg !1279

24:                                               ; preds = %15, %22, %18, %17
  %25 = load i32, i32* @srcMode, align 4, !dbg !1280
  %26 = icmp ne i32 %25, 1, !dbg !1282
  br i1 %26, label %27, label %41, !dbg !1283

27:                                               ; preds = %24
  %28 = call zeroext i8 @containsDubiousChars(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1284
  %29 = zext i8 %28 to i32, !dbg !1284
  %30 = icmp ne i32 %29, 0, !dbg !1284
  br i1 %30, label %31, label %41, !dbg !1285

31:                                               ; preds = %27
  %32 = load i8, i8* @noisy, align 1, !dbg !1286
  %33 = icmp ne i8 %32, 0, !dbg !1286
  br i1 %33, label %34, label %40, !dbg !1289

34:                                               ; preds = %31
  %35 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1290
  %36 = getelementptr inbounds %struct._reent, %struct._reent* %35, i32 0, i32 3, !dbg !1290
  %37 = load %struct.__sFILE*, %struct.__sFILE** %36, align 4, !dbg !1290
  %38 = load i8*, i8** @progName, align 4, !dbg !1291
  %39 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.58, i32 0, i32 0), i8* %38, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1292
  br label %40, !dbg !1292

40:                                               ; preds = %34, %31
  call void @setExit(i32 1), !dbg !1293
  br label %304, !dbg !1294

41:                                               ; preds = %27, %24
  %42 = load i32, i32* @srcMode, align 4, !dbg !1295
  %43 = icmp ne i32 %42, 1, !dbg !1297
  br i1 %43, label %44, label %56, !dbg !1298

44:                                               ; preds = %41
  %45 = call zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1299
  %46 = icmp ne i8 %45, 0, !dbg !1299
  br i1 %46, label %56, label %47, !dbg !1300

47:                                               ; preds = %44
  %48 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1301
  %49 = getelementptr inbounds %struct._reent, %struct._reent* %48, i32 0, i32 3, !dbg !1301
  %50 = load %struct.__sFILE*, %struct.__sFILE** %49, align 4, !dbg !1301
  %51 = load i8*, i8** @progName, align 4, !dbg !1303
  %52 = call i32* @__errno(), !dbg !1304
  %53 = load i32, i32* %52, align 4, !dbg !1304
  %54 = call i8* @strerror(i32 %53), !dbg !1305
  %55 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i32 0, i32 0), i8* %51, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %54), !dbg !1306
  call void @setExit(i32 1), !dbg !1307
  br label %304, !dbg !1308

56:                                               ; preds = %44, %41
  store i32 0, i32* %6, align 4, !dbg !1309
  br label %57, !dbg !1311

57:                                               ; preds = %80, %56
  %58 = load i32, i32* %6, align 4, !dbg !1312
  %59 = icmp slt i32 %58, 4, !dbg !1314
  br i1 %59, label %60, label %83, !dbg !1315

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4, !dbg !1316
  %62 = getelementptr inbounds [4 x i8*], [4 x i8*]* @zSuffix, i32 0, i32 %61, !dbg !1319
  %63 = load i8*, i8** %62, align 4, !dbg !1319
  %64 = call zeroext i8 @hasSuffix(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %63), !dbg !1320
  %65 = icmp ne i8 %64, 0, !dbg !1320
  br i1 %65, label %66, label %79, !dbg !1321

66:                                               ; preds = %60
  %67 = load i8, i8* @noisy, align 1, !dbg !1322
  %68 = icmp ne i8 %67, 0, !dbg !1322
  br i1 %68, label %69, label %78, !dbg !1325

69:                                               ; preds = %66
  %70 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1326
  %71 = getelementptr inbounds %struct._reent, %struct._reent* %70, i32 0, i32 3, !dbg !1326
  %72 = load %struct.__sFILE*, %struct.__sFILE** %71, align 4, !dbg !1326
  %73 = load i8*, i8** @progName, align 4, !dbg !1327
  %74 = load i32, i32* %6, align 4, !dbg !1328
  %75 = getelementptr inbounds [4 x i8*], [4 x i8*]* @zSuffix, i32 0, i32 %74, !dbg !1329
  %76 = load i8*, i8** %75, align 4, !dbg !1329
  %77 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.60, i32 0, i32 0), i8* %73, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %76), !dbg !1330
  br label %78, !dbg !1330

78:                                               ; preds = %69, %66
  call void @setExit(i32 1), !dbg !1331
  br label %304, !dbg !1332

79:                                               ; preds = %60
  br label %80, !dbg !1333

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4, !dbg !1334
  %82 = add nsw i32 %81, 1, !dbg !1334
  store i32 %82, i32* %6, align 4, !dbg !1334
  br label %57, !dbg !1335, !llvm.loop !1336

83:                                               ; preds = %57
  %84 = load i32, i32* @srcMode, align 4, !dbg !1338
  %85 = icmp eq i32 %84, 3, !dbg !1340
  br i1 %85, label %89, label %86, !dbg !1341

86:                                               ; preds = %83
  %87 = load i32, i32* @srcMode, align 4, !dbg !1342
  %88 = icmp eq i32 %87, 2, !dbg !1343
  br i1 %88, label %89, label %102, !dbg !1344

89:                                               ; preds = %86, %83
  %90 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* %7), !dbg !1345
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2, !dbg !1347
  %92 = load i32, i32* %91, align 4, !dbg !1347
  %93 = and i32 %92, 61440, !dbg !1347
  %94 = icmp eq i32 %93, 16384, !dbg !1347
  br i1 %94, label %95, label %101, !dbg !1349

95:                                               ; preds = %89
  %96 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1350
  %97 = getelementptr inbounds %struct._reent, %struct._reent* %96, i32 0, i32 3, !dbg !1350
  %98 = load %struct.__sFILE*, %struct.__sFILE** %97, align 4, !dbg !1350
  %99 = load i8*, i8** @progName, align 4, !dbg !1352
  %100 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.61, i32 0, i32 0), i8* %99, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1353
  call void @setExit(i32 1), !dbg !1354
  br label %304, !dbg !1355

101:                                              ; preds = %89
  br label %102, !dbg !1356

102:                                              ; preds = %101, %86
  %103 = load i32, i32* @srcMode, align 4, !dbg !1357
  %104 = icmp eq i32 %103, 3, !dbg !1359
  br i1 %104, label %105, label %122, !dbg !1360

105:                                              ; preds = %102
  %106 = load i8, i8* @forceOverwrite, align 1, !dbg !1361
  %107 = icmp ne i8 %106, 0, !dbg !1361
  br i1 %107, label %122, label %108, !dbg !1362

108:                                              ; preds = %105
  %109 = call zeroext i8 @notAStandardFile(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1363
  %110 = zext i8 %109 to i32, !dbg !1363
  %111 = icmp ne i32 %110, 0, !dbg !1363
  br i1 %111, label %112, label %122, !dbg !1364

112:                                              ; preds = %108
  %113 = load i8, i8* @noisy, align 1, !dbg !1365
  %114 = icmp ne i8 %113, 0, !dbg !1365
  br i1 %114, label %115, label %121, !dbg !1368

115:                                              ; preds = %112
  %116 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1369
  %117 = getelementptr inbounds %struct._reent, %struct._reent* %116, i32 0, i32 3, !dbg !1369
  %118 = load %struct.__sFILE*, %struct.__sFILE** %117, align 4, !dbg !1369
  %119 = load i8*, i8** @progName, align 4, !dbg !1370
  %120 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %118, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i32 0, i32 0), i8* %119, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1371
  br label %121, !dbg !1371

121:                                              ; preds = %115, %112
  call void @setExit(i32 1), !dbg !1372
  br label %304, !dbg !1373

122:                                              ; preds = %108, %105, %102
  %123 = load i32, i32* @srcMode, align 4, !dbg !1374
  %124 = icmp eq i32 %123, 3, !dbg !1376
  br i1 %124, label %125, label %141, !dbg !1377

125:                                              ; preds = %122
  %126 = call zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !1378
  %127 = zext i8 %126 to i32, !dbg !1378
  %128 = icmp ne i32 %127, 0, !dbg !1378
  br i1 %128, label %129, label %141, !dbg !1379

129:                                              ; preds = %125
  %130 = load i8, i8* @forceOverwrite, align 1, !dbg !1380
  %131 = icmp ne i8 %130, 0, !dbg !1380
  br i1 %131, label %132, label %134, !dbg !1383

132:                                              ; preds = %129
  %133 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !1384
  br label %140, !dbg !1386

134:                                              ; preds = %129
  %135 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1387
  %136 = getelementptr inbounds %struct._reent, %struct._reent* %135, i32 0, i32 3, !dbg !1387
  %137 = load %struct.__sFILE*, %struct.__sFILE** %136, align 4, !dbg !1387
  %138 = load i8*, i8** @progName, align 4, !dbg !1389
  %139 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %137, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i32 0, i32 0), i8* %138, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !1390
  call void @setExit(i32 1), !dbg !1391
  br label %304, !dbg !1392

140:                                              ; preds = %132
  br label %141, !dbg !1393

141:                                              ; preds = %140, %125, %122
  %142 = load i32, i32* @srcMode, align 4, !dbg !1394
  %143 = icmp eq i32 %142, 3, !dbg !1396
  br i1 %143, label %144, label %161, !dbg !1397

144:                                              ; preds = %141
  %145 = load i8, i8* @forceOverwrite, align 1, !dbg !1398
  %146 = icmp ne i8 %145, 0, !dbg !1398
  br i1 %146, label %161, label %147, !dbg !1399

147:                                              ; preds = %144
  %148 = call i32 @countHardLinks(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1400
  store i32 %148, i32* %5, align 4, !dbg !1401
  %149 = icmp sgt i32 %148, 0, !dbg !1402
  br i1 %149, label %150, label %161, !dbg !1403

150:                                              ; preds = %147
  %151 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1404
  %152 = getelementptr inbounds %struct._reent, %struct._reent* %151, i32 0, i32 3, !dbg !1404
  %153 = load %struct.__sFILE*, %struct.__sFILE** %152, align 4, !dbg !1404
  %154 = load i8*, i8** @progName, align 4, !dbg !1406
  %155 = load i32, i32* %5, align 4, !dbg !1407
  %156 = load i32, i32* %5, align 4, !dbg !1408
  %157 = icmp sgt i32 %156, 1, !dbg !1409
  %158 = zext i1 %157 to i64, !dbg !1408
  %159 = select i1 %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), !dbg !1408
  %160 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %153, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.64, i32 0, i32 0), i8* %154, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i32 %155, i8* %159), !dbg !1410
  call void @setExit(i32 1), !dbg !1411
  br label %304, !dbg !1412

161:                                              ; preds = %147, %144, %141
  %162 = load i32, i32* @srcMode, align 4, !dbg !1413
  %163 = icmp eq i32 %162, 3, !dbg !1415
  br i1 %163, label %164, label %165, !dbg !1416

164:                                              ; preds = %161
  call void @saveInputFileMetaInfo(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1417
  br label %165, !dbg !1419

165:                                              ; preds = %164, %161
  %166 = load i32, i32* @srcMode, align 4, !dbg !1420
  switch i32 %166, label %274 [
    i32 1, label %167
    i32 2, label %193
    i32 3, label %235
  ], !dbg !1421

167:                                              ; preds = %165
  %168 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1422
  %169 = getelementptr inbounds %struct._reent, %struct._reent* %168, i32 0, i32 1, !dbg !1422
  %170 = load %struct.__sFILE*, %struct.__sFILE** %169, align 4, !dbg !1422
  store %struct.__sFILE* %170, %struct.__sFILE** %3, align 4, !dbg !1424
  %171 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1425
  %172 = getelementptr inbounds %struct._reent, %struct._reent* %171, i32 0, i32 2, !dbg !1425
  %173 = load %struct.__sFILE*, %struct.__sFILE** %172, align 8, !dbg !1425
  store %struct.__sFILE* %173, %struct.__sFILE** %4, align 4, !dbg !1426
  %174 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1427
  %175 = getelementptr inbounds %struct._reent, %struct._reent* %174, i32 0, i32 2, !dbg !1427
  %176 = load %struct.__sFILE*, %struct.__sFILE** %175, align 8, !dbg !1427
  %177 = call i32 @fileno(%struct.__sFILE* %176), !dbg !1429
  %178 = call i32 @isatty(i32 %177), !dbg !1430
  %179 = icmp ne i32 %178, 0, !dbg !1430
  br i1 %179, label %180, label %192, !dbg !1431

180:                                              ; preds = %167
  %181 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1432
  %182 = getelementptr inbounds %struct._reent, %struct._reent* %181, i32 0, i32 3, !dbg !1432
  %183 = load %struct.__sFILE*, %struct.__sFILE** %182, align 4, !dbg !1432
  %184 = load i8*, i8** @progName, align 4, !dbg !1434
  %185 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %183, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.66, i32 0, i32 0), i8* %184), !dbg !1435
  %186 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1436
  %187 = getelementptr inbounds %struct._reent, %struct._reent* %186, i32 0, i32 3, !dbg !1436
  %188 = load %struct.__sFILE*, %struct.__sFILE** %187, align 4, !dbg !1436
  %189 = load i8*, i8** @progName, align 4, !dbg !1437
  %190 = load i8*, i8** @progName, align 4, !dbg !1438
  %191 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %188, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.67, i32 0, i32 0), i8* %189, i8* %190), !dbg !1439
  call void @setExit(i32 1), !dbg !1440
  br label %304, !dbg !1441

192:                                              ; preds = %167
  br label %275, !dbg !1442

193:                                              ; preds = %165
  %194 = call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)), !dbg !1443
  store %struct.__sFILE* %194, %struct.__sFILE** %3, align 4, !dbg !1444
  %195 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1445
  %196 = getelementptr inbounds %struct._reent, %struct._reent* %195, i32 0, i32 2, !dbg !1445
  %197 = load %struct.__sFILE*, %struct.__sFILE** %196, align 8, !dbg !1445
  store %struct.__sFILE* %197, %struct.__sFILE** %4, align 4, !dbg !1446
  %198 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1447
  %199 = getelementptr inbounds %struct._reent, %struct._reent* %198, i32 0, i32 2, !dbg !1447
  %200 = load %struct.__sFILE*, %struct.__sFILE** %199, align 8, !dbg !1447
  %201 = call i32 @fileno(%struct.__sFILE* %200), !dbg !1449
  %202 = call i32 @isatty(i32 %201), !dbg !1450
  %203 = icmp ne i32 %202, 0, !dbg !1450
  br i1 %203, label %204, label %222, !dbg !1451

204:                                              ; preds = %193
  %205 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1452
  %206 = getelementptr inbounds %struct._reent, %struct._reent* %205, i32 0, i32 3, !dbg !1452
  %207 = load %struct.__sFILE*, %struct.__sFILE** %206, align 4, !dbg !1452
  %208 = load i8*, i8** @progName, align 4, !dbg !1454
  %209 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %207, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.66, i32 0, i32 0), i8* %208), !dbg !1455
  %210 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1456
  %211 = getelementptr inbounds %struct._reent, %struct._reent* %210, i32 0, i32 3, !dbg !1456
  %212 = load %struct.__sFILE*, %struct.__sFILE** %211, align 4, !dbg !1456
  %213 = load i8*, i8** @progName, align 4, !dbg !1457
  %214 = load i8*, i8** @progName, align 4, !dbg !1458
  %215 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %212, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.67, i32 0, i32 0), i8* %213, i8* %214), !dbg !1459
  %216 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !1460
  %217 = icmp ne %struct.__sFILE* %216, null, !dbg !1462
  br i1 %217, label %218, label %221, !dbg !1463

218:                                              ; preds = %204
  %219 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !1464
  %220 = call i32 @fclose(%struct.__sFILE* %219), !dbg !1465
  br label %221, !dbg !1465

221:                                              ; preds = %218, %204
  call void @setExit(i32 1), !dbg !1466
  br label %304, !dbg !1467

222:                                              ; preds = %193
  %223 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !1468
  %224 = icmp eq %struct.__sFILE* %223, null, !dbg !1470
  br i1 %224, label %225, label %234, !dbg !1471

225:                                              ; preds = %222
  %226 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1472
  %227 = getelementptr inbounds %struct._reent, %struct._reent* %226, i32 0, i32 3, !dbg !1472
  %228 = load %struct.__sFILE*, %struct.__sFILE** %227, align 4, !dbg !1472
  %229 = load i8*, i8** @progName, align 4, !dbg !1474
  %230 = call i32* @__errno(), !dbg !1475
  %231 = load i32, i32* %230, align 4, !dbg !1475
  %232 = call i8* @strerror(i32 %231), !dbg !1476
  %233 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %228, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i32 0, i32 0), i8* %229, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %232), !dbg !1477
  call void @setExit(i32 1), !dbg !1478
  br label %304, !dbg !1479

234:                                              ; preds = %222
  br label %275, !dbg !1480

235:                                              ; preds = %165
  %236 = call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)), !dbg !1481
  store %struct.__sFILE* %236, %struct.__sFILE** %3, align 4, !dbg !1482
  %237 = call %struct.__sFILE* @fopen_output_safely(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0)), !dbg !1483
  store %struct.__sFILE* %237, %struct.__sFILE** %4, align 4, !dbg !1484
  %238 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !1485
  %239 = icmp eq %struct.__sFILE* %238, null, !dbg !1487
  br i1 %239, label %240, label %255, !dbg !1488

240:                                              ; preds = %235
  %241 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1489
  %242 = getelementptr inbounds %struct._reent, %struct._reent* %241, i32 0, i32 3, !dbg !1489
  %243 = load %struct.__sFILE*, %struct.__sFILE** %242, align 4, !dbg !1489
  %244 = load i8*, i8** @progName, align 4, !dbg !1491
  %245 = call i32* @__errno(), !dbg !1492
  %246 = load i32, i32* %245, align 4, !dbg !1492
  %247 = call i8* @strerror(i32 %246), !dbg !1493
  %248 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %243, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.70, i32 0, i32 0), i8* %244, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* %247), !dbg !1494
  %249 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !1495
  %250 = icmp ne %struct.__sFILE* %249, null, !dbg !1497
  br i1 %250, label %251, label %254, !dbg !1498

251:                                              ; preds = %240
  %252 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !1499
  %253 = call i32 @fclose(%struct.__sFILE* %252), !dbg !1500
  br label %254, !dbg !1500

254:                                              ; preds = %251, %240
  call void @setExit(i32 1), !dbg !1501
  br label %304, !dbg !1502

255:                                              ; preds = %235
  %256 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !1503
  %257 = icmp eq %struct.__sFILE* %256, null, !dbg !1505
  br i1 %257, label %258, label %273, !dbg !1506

258:                                              ; preds = %255
  %259 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1507
  %260 = getelementptr inbounds %struct._reent, %struct._reent* %259, i32 0, i32 3, !dbg !1507
  %261 = load %struct.__sFILE*, %struct.__sFILE** %260, align 4, !dbg !1507
  %262 = load i8*, i8** @progName, align 4, !dbg !1509
  %263 = call i32* @__errno(), !dbg !1510
  %264 = load i32, i32* %263, align 4, !dbg !1510
  %265 = call i8* @strerror(i32 %264), !dbg !1511
  %266 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %261, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i32 0, i32 0), i8* %262, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %265), !dbg !1512
  %267 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !1513
  %268 = icmp ne %struct.__sFILE* %267, null, !dbg !1515
  br i1 %268, label %269, label %272, !dbg !1516

269:                                              ; preds = %258
  %270 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !1517
  %271 = call i32 @fclose(%struct.__sFILE* %270), !dbg !1518
  br label %272, !dbg !1518

272:                                              ; preds = %269, %258
  call void @setExit(i32 1), !dbg !1519
  br label %304, !dbg !1520

273:                                              ; preds = %255
  br label %275, !dbg !1521

274:                                              ; preds = %165
  call void @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i32 0, i32 0)) #7, !dbg !1522
  unreachable, !dbg !1522

275:                                              ; preds = %273, %234, %192
  %276 = load i32, i32* @verbosity, align 4, !dbg !1523
  %277 = icmp sge i32 %276, 1, !dbg !1525
  br i1 %277, label %278, label %287, !dbg !1526

278:                                              ; preds = %275
  %279 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1527
  %280 = getelementptr inbounds %struct._reent, %struct._reent* %279, i32 0, i32 3, !dbg !1527
  %281 = load %struct.__sFILE*, %struct.__sFILE** %280, align 4, !dbg !1527
  %282 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %281, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1529
  call void @pad(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1530
  %283 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1531
  %284 = getelementptr inbounds %struct._reent, %struct._reent* %283, i32 0, i32 3, !dbg !1531
  %285 = load %struct.__sFILE*, %struct.__sFILE** %284, align 4, !dbg !1531
  %286 = call i32 @fflush(%struct.__sFILE* %285), !dbg !1532
  br label %287, !dbg !1533

287:                                              ; preds = %278, %275
  %288 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !1534
  store %struct.__sFILE* %288, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !1535
  store i8 1, i8* @deleteOutputOnInterrupt, align 1, !dbg !1536
  %289 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !1537
  %290 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !1538
  call void @compressStream(%struct.__sFILE* %289, %struct.__sFILE* %290), !dbg !1539
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !1540
  %291 = load i32, i32* @srcMode, align 4, !dbg !1541
  %292 = icmp eq i32 %291, 3, !dbg !1543
  br i1 %292, label %293, label %303, !dbg !1544

293:                                              ; preds = %287
  call void @applySavedTimeInfoToOutputFile(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !1545
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1547
  %294 = load i8, i8* @keepInputFiles, align 1, !dbg !1548
  %295 = icmp ne i8 %294, 0, !dbg !1548
  br i1 %295, label %302, label %296, !dbg !1550

296:                                              ; preds = %293
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1551, metadata !DIExpression()), !dbg !1553
  %297 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1554
  store i32 %297, i32* %8, align 4, !dbg !1553
  %298 = load i32, i32* %8, align 4, !dbg !1555
  %299 = icmp ne i32 %298, 0, !dbg !1555
  br i1 %299, label %300, label %301, !dbg !1558

300:                                              ; preds = %296
  call void @ioError() #7, !dbg !1555
  unreachable, !dbg !1555

301:                                              ; preds = %296
  br label %302, !dbg !1559

302:                                              ; preds = %301, %293
  br label %303, !dbg !1560

303:                                              ; preds = %302, %287
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1561
  br label %304, !dbg !1562

304:                                              ; preds = %303, %272, %254, %225, %221, %180, %150, %134, %121, %95, %78, %47, %40
  ret void, !dbg !1562
}

; Function Attrs: noinline nounwind optnone
define internal void @uncompress(i8* %0) #0 !dbg !1563 {
  %2 = alloca i8*, align 4
  %3 = alloca %struct.__sFILE*, align 4
  %4 = alloca %struct.__sFILE*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.stat, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1564, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.declare(metadata %struct.__sFILE** %3, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.declare(metadata %struct.__sFILE** %4, metadata !1568, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1570, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1572, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.declare(metadata i8* %7, metadata !1574, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1576, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.declare(metadata %struct.stat* %9, metadata !1578, metadata !DIExpression()), !dbg !1579
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1580
  %12 = load i8*, i8** %2, align 4, !dbg !1581
  %13 = icmp eq i8* %12, null, !dbg !1583
  br i1 %13, label %14, label %18, !dbg !1584

14:                                               ; preds = %1
  %15 = load i32, i32* @srcMode, align 4, !dbg !1585
  %16 = icmp ne i32 %15, 1, !dbg !1586
  br i1 %16, label %17, label %18, !dbg !1587

17:                                               ; preds = %14
  call void @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.80, i32 0, i32 0)) #7, !dbg !1588
  unreachable, !dbg !1588

18:                                               ; preds = %14, %1
  store i8 0, i8* %8, align 1, !dbg !1589
  %19 = load i32, i32* @srcMode, align 4, !dbg !1590
  switch i32 %19, label %45 [
    i32 1, label %20
    i32 3, label %21
    i32 2, label %43
  ], !dbg !1591

20:                                               ; preds = %18
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0)), !dbg !1592
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0)), !dbg !1594
  br label %45, !dbg !1595

21:                                               ; preds = %18
  %22 = load i8*, i8** %2, align 4, !dbg !1596
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %22), !dbg !1597
  %23 = load i8*, i8** %2, align 4, !dbg !1598
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* %23), !dbg !1599
  store i32 0, i32* %6, align 4, !dbg !1600
  br label %24, !dbg !1602

24:                                               ; preds = %38, %21
  %25 = load i32, i32* %6, align 4, !dbg !1603
  %26 = icmp slt i32 %25, 4, !dbg !1605
  br i1 %26, label %27, label %41, !dbg !1606

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4, !dbg !1607
  %29 = getelementptr inbounds [4 x i8*], [4 x i8*]* @zSuffix, i32 0, i32 %28, !dbg !1609
  %30 = load i8*, i8** %29, align 4, !dbg !1609
  %31 = load i32, i32* %6, align 4, !dbg !1610
  %32 = getelementptr inbounds [4 x i8*], [4 x i8*]* @unzSuffix, i32 0, i32 %31, !dbg !1611
  %33 = load i8*, i8** %32, align 4, !dbg !1611
  %34 = call zeroext i8 @mapSuffix(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* %30, i8* %33), !dbg !1612
  %35 = icmp ne i8 %34, 0, !dbg !1612
  br i1 %35, label %36, label %37, !dbg !1613

36:                                               ; preds = %27
  br label %46, !dbg !1614

37:                                               ; preds = %27
  br label %38, !dbg !1615

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4, !dbg !1616
  %40 = add nsw i32 %39, 1, !dbg !1616
  store i32 %40, i32* %6, align 4, !dbg !1616
  br label %24, !dbg !1617, !llvm.loop !1618

41:                                               ; preds = %24
  store i8 1, i8* %8, align 1, !dbg !1620
  %42 = call i8* @strcat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0)), !dbg !1621
  br label %45, !dbg !1622

43:                                               ; preds = %18
  %44 = load i8*, i8** %2, align 4, !dbg !1623
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %44), !dbg !1624
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0)), !dbg !1625
  br label %45, !dbg !1626

45:                                               ; preds = %18, %43, %41, %20
  br label %46, !dbg !1627

46:                                               ; preds = %45, %36
  call void @llvm.dbg.label(metadata !1628), !dbg !1629
  %47 = load i32, i32* @srcMode, align 4, !dbg !1630
  %48 = icmp ne i32 %47, 1, !dbg !1632
  br i1 %48, label %49, label %63, !dbg !1633

49:                                               ; preds = %46
  %50 = call zeroext i8 @containsDubiousChars(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1634
  %51 = zext i8 %50 to i32, !dbg !1634
  %52 = icmp ne i32 %51, 0, !dbg !1634
  br i1 %52, label %53, label %63, !dbg !1635

53:                                               ; preds = %49
  %54 = load i8, i8* @noisy, align 1, !dbg !1636
  %55 = icmp ne i8 %54, 0, !dbg !1636
  br i1 %55, label %56, label %62, !dbg !1639

56:                                               ; preds = %53
  %57 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1640
  %58 = getelementptr inbounds %struct._reent, %struct._reent* %57, i32 0, i32 3, !dbg !1640
  %59 = load %struct.__sFILE*, %struct.__sFILE** %58, align 4, !dbg !1640
  %60 = load i8*, i8** @progName, align 4, !dbg !1641
  %61 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.58, i32 0, i32 0), i8* %60, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1642
  br label %62, !dbg !1642

62:                                               ; preds = %56, %53
  call void @setExit(i32 1), !dbg !1643
  br label %334, !dbg !1644

63:                                               ; preds = %49, %46
  %64 = load i32, i32* @srcMode, align 4, !dbg !1645
  %65 = icmp ne i32 %64, 1, !dbg !1647
  br i1 %65, label %66, label %78, !dbg !1648

66:                                               ; preds = %63
  %67 = call zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1649
  %68 = icmp ne i8 %67, 0, !dbg !1649
  br i1 %68, label %78, label %69, !dbg !1650

69:                                               ; preds = %66
  %70 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1651
  %71 = getelementptr inbounds %struct._reent, %struct._reent* %70, i32 0, i32 3, !dbg !1651
  %72 = load %struct.__sFILE*, %struct.__sFILE** %71, align 4, !dbg !1651
  %73 = load i8*, i8** @progName, align 4, !dbg !1653
  %74 = call i32* @__errno(), !dbg !1654
  %75 = load i32, i32* %74, align 4, !dbg !1654
  %76 = call i8* @strerror(i32 %75), !dbg !1655
  %77 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i32 0, i32 0), i8* %73, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %76), !dbg !1656
  call void @setExit(i32 1), !dbg !1657
  br label %334, !dbg !1658

78:                                               ; preds = %66, %63
  %79 = load i32, i32* @srcMode, align 4, !dbg !1659
  %80 = icmp eq i32 %79, 3, !dbg !1661
  br i1 %80, label %84, label %81, !dbg !1662

81:                                               ; preds = %78
  %82 = load i32, i32* @srcMode, align 4, !dbg !1663
  %83 = icmp eq i32 %82, 2, !dbg !1664
  br i1 %83, label %84, label %97, !dbg !1665

84:                                               ; preds = %81, %78
  %85 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* %9), !dbg !1666
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 2, !dbg !1668
  %87 = load i32, i32* %86, align 4, !dbg !1668
  %88 = and i32 %87, 61440, !dbg !1668
  %89 = icmp eq i32 %88, 16384, !dbg !1668
  br i1 %89, label %90, label %96, !dbg !1670

90:                                               ; preds = %84
  %91 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1671
  %92 = getelementptr inbounds %struct._reent, %struct._reent* %91, i32 0, i32 3, !dbg !1671
  %93 = load %struct.__sFILE*, %struct.__sFILE** %92, align 4, !dbg !1671
  %94 = load i8*, i8** @progName, align 4, !dbg !1673
  %95 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.61, i32 0, i32 0), i8* %94, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1674
  call void @setExit(i32 1), !dbg !1675
  br label %334, !dbg !1676

96:                                               ; preds = %84
  br label %97, !dbg !1677

97:                                               ; preds = %96, %81
  %98 = load i32, i32* @srcMode, align 4, !dbg !1678
  %99 = icmp eq i32 %98, 3, !dbg !1680
  br i1 %99, label %100, label %117, !dbg !1681

100:                                              ; preds = %97
  %101 = load i8, i8* @forceOverwrite, align 1, !dbg !1682
  %102 = icmp ne i8 %101, 0, !dbg !1682
  br i1 %102, label %117, label %103, !dbg !1683

103:                                              ; preds = %100
  %104 = call zeroext i8 @notAStandardFile(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1684
  %105 = zext i8 %104 to i32, !dbg !1684
  %106 = icmp ne i32 %105, 0, !dbg !1684
  br i1 %106, label %107, label %117, !dbg !1685

107:                                              ; preds = %103
  %108 = load i8, i8* @noisy, align 1, !dbg !1686
  %109 = icmp ne i8 %108, 0, !dbg !1686
  br i1 %109, label %110, label %116, !dbg !1689

110:                                              ; preds = %107
  %111 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1690
  %112 = getelementptr inbounds %struct._reent, %struct._reent* %111, i32 0, i32 3, !dbg !1690
  %113 = load %struct.__sFILE*, %struct.__sFILE** %112, align 4, !dbg !1690
  %114 = load i8*, i8** @progName, align 4, !dbg !1691
  %115 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %113, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i32 0, i32 0), i8* %114, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1692
  br label %116, !dbg !1692

116:                                              ; preds = %110, %107
  call void @setExit(i32 1), !dbg !1693
  br label %334, !dbg !1694

117:                                              ; preds = %103, %100, %97
  %118 = load i8, i8* %8, align 1, !dbg !1695
  %119 = icmp ne i8 %118, 0, !dbg !1695
  br i1 %119, label %120, label %130, !dbg !1697

120:                                              ; preds = %117
  %121 = load i8, i8* @noisy, align 1, !dbg !1698
  %122 = icmp ne i8 %121, 0, !dbg !1698
  br i1 %122, label %123, label %129, !dbg !1701

123:                                              ; preds = %120
  %124 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1702
  %125 = getelementptr inbounds %struct._reent, %struct._reent* %124, i32 0, i32 3, !dbg !1702
  %126 = load %struct.__sFILE*, %struct.__sFILE** %125, align 4, !dbg !1702
  %127 = load i8*, i8** @progName, align 4, !dbg !1703
  %128 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %126, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.82, i32 0, i32 0), i8* %127, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !1704
  br label %129, !dbg !1704

129:                                              ; preds = %123, %120
  br label %130, !dbg !1705

130:                                              ; preds = %129, %117
  %131 = load i32, i32* @srcMode, align 4, !dbg !1706
  %132 = icmp eq i32 %131, 3, !dbg !1708
  br i1 %132, label %133, label %149, !dbg !1709

133:                                              ; preds = %130
  %134 = call zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !1710
  %135 = zext i8 %134 to i32, !dbg !1710
  %136 = icmp ne i32 %135, 0, !dbg !1710
  br i1 %136, label %137, label %149, !dbg !1711

137:                                              ; preds = %133
  %138 = load i8, i8* @forceOverwrite, align 1, !dbg !1712
  %139 = icmp ne i8 %138, 0, !dbg !1712
  br i1 %139, label %140, label %142, !dbg !1715

140:                                              ; preds = %137
  %141 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !1716
  br label %148, !dbg !1718

142:                                              ; preds = %137
  %143 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1719
  %144 = getelementptr inbounds %struct._reent, %struct._reent* %143, i32 0, i32 3, !dbg !1719
  %145 = load %struct.__sFILE*, %struct.__sFILE** %144, align 4, !dbg !1719
  %146 = load i8*, i8** @progName, align 4, !dbg !1721
  %147 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %145, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.63, i32 0, i32 0), i8* %146, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !1722
  call void @setExit(i32 1), !dbg !1723
  br label %334, !dbg !1724

148:                                              ; preds = %140
  br label %149, !dbg !1725

149:                                              ; preds = %148, %133, %130
  %150 = load i32, i32* @srcMode, align 4, !dbg !1726
  %151 = icmp eq i32 %150, 3, !dbg !1728
  br i1 %151, label %152, label %169, !dbg !1729

152:                                              ; preds = %149
  %153 = load i8, i8* @forceOverwrite, align 1, !dbg !1730
  %154 = icmp ne i8 %153, 0, !dbg !1730
  br i1 %154, label %169, label %155, !dbg !1731

155:                                              ; preds = %152
  %156 = call i32 @countHardLinks(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1732
  store i32 %156, i32* %5, align 4, !dbg !1733
  %157 = icmp sgt i32 %156, 0, !dbg !1734
  br i1 %157, label %158, label %169, !dbg !1735

158:                                              ; preds = %155
  %159 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1736
  %160 = getelementptr inbounds %struct._reent, %struct._reent* %159, i32 0, i32 3, !dbg !1736
  %161 = load %struct.__sFILE*, %struct.__sFILE** %160, align 4, !dbg !1736
  %162 = load i8*, i8** @progName, align 4, !dbg !1738
  %163 = load i32, i32* %5, align 4, !dbg !1739
  %164 = load i32, i32* %5, align 4, !dbg !1740
  %165 = icmp sgt i32 %164, 1, !dbg !1741
  %166 = zext i1 %165 to i64, !dbg !1740
  %167 = select i1 %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), !dbg !1740
  %168 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %161, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.64, i32 0, i32 0), i8* %162, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i32 %163, i8* %167), !dbg !1742
  call void @setExit(i32 1), !dbg !1743
  br label %334, !dbg !1744

169:                                              ; preds = %155, %152, %149
  %170 = load i32, i32* @srcMode, align 4, !dbg !1745
  %171 = icmp eq i32 %170, 3, !dbg !1747
  br i1 %171, label %172, label %173, !dbg !1748

172:                                              ; preds = %169
  call void @saveInputFileMetaInfo(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1749
  br label %173, !dbg !1751

173:                                              ; preds = %172, %169
  %174 = load i32, i32* @srcMode, align 4, !dbg !1752
  switch i32 %174, label %263 [
    i32 1, label %175
    i32 2, label %201
    i32 3, label %224
  ], !dbg !1753

175:                                              ; preds = %173
  %176 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1754
  %177 = getelementptr inbounds %struct._reent, %struct._reent* %176, i32 0, i32 1, !dbg !1754
  %178 = load %struct.__sFILE*, %struct.__sFILE** %177, align 4, !dbg !1754
  store %struct.__sFILE* %178, %struct.__sFILE** %3, align 4, !dbg !1756
  %179 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1757
  %180 = getelementptr inbounds %struct._reent, %struct._reent* %179, i32 0, i32 2, !dbg !1757
  %181 = load %struct.__sFILE*, %struct.__sFILE** %180, align 8, !dbg !1757
  store %struct.__sFILE* %181, %struct.__sFILE** %4, align 4, !dbg !1758
  %182 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1759
  %183 = getelementptr inbounds %struct._reent, %struct._reent* %182, i32 0, i32 1, !dbg !1759
  %184 = load %struct.__sFILE*, %struct.__sFILE** %183, align 4, !dbg !1759
  %185 = call i32 @fileno(%struct.__sFILE* %184), !dbg !1761
  %186 = call i32 @isatty(i32 %185), !dbg !1762
  %187 = icmp ne i32 %186, 0, !dbg !1762
  br i1 %187, label %188, label %200, !dbg !1763

188:                                              ; preds = %175
  %189 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1764
  %190 = getelementptr inbounds %struct._reent, %struct._reent* %189, i32 0, i32 3, !dbg !1764
  %191 = load %struct.__sFILE*, %struct.__sFILE** %190, align 4, !dbg !1764
  %192 = load i8*, i8** @progName, align 4, !dbg !1766
  %193 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %191, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.83, i32 0, i32 0), i8* %192), !dbg !1767
  %194 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1768
  %195 = getelementptr inbounds %struct._reent, %struct._reent* %194, i32 0, i32 3, !dbg !1768
  %196 = load %struct.__sFILE*, %struct.__sFILE** %195, align 4, !dbg !1768
  %197 = load i8*, i8** @progName, align 4, !dbg !1769
  %198 = load i8*, i8** @progName, align 4, !dbg !1770
  %199 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %196, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.67, i32 0, i32 0), i8* %197, i8* %198), !dbg !1771
  call void @setExit(i32 1), !dbg !1772
  br label %334, !dbg !1773

200:                                              ; preds = %175
  br label %264, !dbg !1774

201:                                              ; preds = %173
  %202 = call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)), !dbg !1775
  store %struct.__sFILE* %202, %struct.__sFILE** %3, align 4, !dbg !1776
  %203 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1777
  %204 = getelementptr inbounds %struct._reent, %struct._reent* %203, i32 0, i32 2, !dbg !1777
  %205 = load %struct.__sFILE*, %struct.__sFILE** %204, align 8, !dbg !1777
  store %struct.__sFILE* %205, %struct.__sFILE** %4, align 4, !dbg !1778
  %206 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !1779
  %207 = icmp eq %struct.__sFILE* %206, null, !dbg !1781
  br i1 %207, label %208, label %223, !dbg !1782

208:                                              ; preds = %201
  %209 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1783
  %210 = getelementptr inbounds %struct._reent, %struct._reent* %209, i32 0, i32 3, !dbg !1783
  %211 = load %struct.__sFILE*, %struct.__sFILE** %210, align 4, !dbg !1783
  %212 = load i8*, i8** @progName, align 4, !dbg !1785
  %213 = call i32* @__errno(), !dbg !1786
  %214 = load i32, i32* %213, align 4, !dbg !1786
  %215 = call i8* @strerror(i32 %214), !dbg !1787
  %216 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %211, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.84, i32 0, i32 0), i8* %212, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %215), !dbg !1788
  %217 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !1789
  %218 = icmp ne %struct.__sFILE* %217, null, !dbg !1791
  br i1 %218, label %219, label %222, !dbg !1792

219:                                              ; preds = %208
  %220 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !1793
  %221 = call i32 @fclose(%struct.__sFILE* %220), !dbg !1794
  br label %222, !dbg !1794

222:                                              ; preds = %219, %208
  call void @setExit(i32 1), !dbg !1795
  br label %334, !dbg !1796

223:                                              ; preds = %201
  br label %264, !dbg !1797

224:                                              ; preds = %173
  %225 = call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)), !dbg !1798
  store %struct.__sFILE* %225, %struct.__sFILE** %3, align 4, !dbg !1799
  %226 = call %struct.__sFILE* @fopen_output_safely(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0)), !dbg !1800
  store %struct.__sFILE* %226, %struct.__sFILE** %4, align 4, !dbg !1801
  %227 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !1802
  %228 = icmp eq %struct.__sFILE* %227, null, !dbg !1804
  br i1 %228, label %229, label %244, !dbg !1805

229:                                              ; preds = %224
  %230 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1806
  %231 = getelementptr inbounds %struct._reent, %struct._reent* %230, i32 0, i32 3, !dbg !1806
  %232 = load %struct.__sFILE*, %struct.__sFILE** %231, align 4, !dbg !1806
  %233 = load i8*, i8** @progName, align 4, !dbg !1808
  %234 = call i32* @__errno(), !dbg !1809
  %235 = load i32, i32* %234, align 4, !dbg !1809
  %236 = call i8* @strerror(i32 %235), !dbg !1810
  %237 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %232, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.70, i32 0, i32 0), i8* %233, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* %236), !dbg !1811
  %238 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !1812
  %239 = icmp ne %struct.__sFILE* %238, null, !dbg !1814
  br i1 %239, label %240, label %243, !dbg !1815

240:                                              ; preds = %229
  %241 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !1816
  %242 = call i32 @fclose(%struct.__sFILE* %241), !dbg !1817
  br label %243, !dbg !1817

243:                                              ; preds = %240, %229
  call void @setExit(i32 1), !dbg !1818
  br label %334, !dbg !1819

244:                                              ; preds = %224
  %245 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !1820
  %246 = icmp eq %struct.__sFILE* %245, null, !dbg !1822
  br i1 %246, label %247, label %262, !dbg !1823

247:                                              ; preds = %244
  %248 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1824
  %249 = getelementptr inbounds %struct._reent, %struct._reent* %248, i32 0, i32 3, !dbg !1824
  %250 = load %struct.__sFILE*, %struct.__sFILE** %249, align 4, !dbg !1824
  %251 = load i8*, i8** @progName, align 4, !dbg !1826
  %252 = call i32* @__errno(), !dbg !1827
  %253 = load i32, i32* %252, align 4, !dbg !1827
  %254 = call i8* @strerror(i32 %253), !dbg !1828
  %255 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %250, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i32 0, i32 0), i8* %251, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %254), !dbg !1829
  %256 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !1830
  %257 = icmp ne %struct.__sFILE* %256, null, !dbg !1832
  br i1 %257, label %258, label %261, !dbg !1833

258:                                              ; preds = %247
  %259 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !1834
  %260 = call i32 @fclose(%struct.__sFILE* %259), !dbg !1835
  br label %261, !dbg !1835

261:                                              ; preds = %258, %247
  call void @setExit(i32 1), !dbg !1836
  br label %334, !dbg !1837

262:                                              ; preds = %244
  br label %264, !dbg !1838

263:                                              ; preds = %173
  call void @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.85, i32 0, i32 0)) #7, !dbg !1839
  unreachable, !dbg !1839

264:                                              ; preds = %262, %223, %200
  %265 = load i32, i32* @verbosity, align 4, !dbg !1840
  %266 = icmp sge i32 %265, 1, !dbg !1842
  br i1 %266, label %267, label %276, !dbg !1843

267:                                              ; preds = %264
  %268 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1844
  %269 = getelementptr inbounds %struct._reent, %struct._reent* %268, i32 0, i32 3, !dbg !1844
  %270 = load %struct.__sFILE*, %struct.__sFILE** %269, align 4, !dbg !1844
  %271 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %270, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1846
  call void @pad(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1847
  %272 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1848
  %273 = getelementptr inbounds %struct._reent, %struct._reent* %272, i32 0, i32 3, !dbg !1848
  %274 = load %struct.__sFILE*, %struct.__sFILE** %273, align 4, !dbg !1848
  %275 = call i32 @fflush(%struct.__sFILE* %274), !dbg !1849
  br label %276, !dbg !1850

276:                                              ; preds = %267, %264
  %277 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !1851
  store %struct.__sFILE* %277, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !1852
  store i8 1, i8* @deleteOutputOnInterrupt, align 1, !dbg !1853
  %278 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !1854
  %279 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !1855
  %280 = call zeroext i8 @uncompressStream(%struct.__sFILE* %278, %struct.__sFILE* %279), !dbg !1856
  store i8 %280, i8* %7, align 1, !dbg !1857
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !1858
  %281 = load i8, i8* %7, align 1, !dbg !1859
  %282 = icmp ne i8 %281, 0, !dbg !1859
  br i1 %282, label %283, label %297, !dbg !1861

283:                                              ; preds = %276
  %284 = load i32, i32* @srcMode, align 4, !dbg !1862
  %285 = icmp eq i32 %284, 3, !dbg !1865
  br i1 %285, label %286, label %296, !dbg !1866

286:                                              ; preds = %283
  call void @applySavedTimeInfoToOutputFile(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !1867
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1869
  %287 = load i8, i8* @keepInputFiles, align 1, !dbg !1870
  %288 = icmp ne i8 %287, 0, !dbg !1870
  br i1 %288, label %295, label %289, !dbg !1872

289:                                              ; preds = %286
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1873, metadata !DIExpression()), !dbg !1875
  %290 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1876
  store i32 %290, i32* %10, align 4, !dbg !1875
  %291 = load i32, i32* %10, align 4, !dbg !1877
  %292 = icmp ne i32 %291, 0, !dbg !1877
  br i1 %292, label %293, label %294, !dbg !1880

293:                                              ; preds = %289
  call void @ioError() #7, !dbg !1877
  unreachable, !dbg !1877

294:                                              ; preds = %289
  br label %295, !dbg !1881

295:                                              ; preds = %294, %286
  br label %296, !dbg !1882

296:                                              ; preds = %295, %283
  br label %307, !dbg !1883

297:                                              ; preds = %276
  store i8 1, i8* @unzFailsExist, align 1, !dbg !1884
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1886
  %298 = load i32, i32* @srcMode, align 4, !dbg !1887
  %299 = icmp eq i32 %298, 3, !dbg !1889
  br i1 %299, label %300, label %306, !dbg !1890

300:                                              ; preds = %297
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1891, metadata !DIExpression()), !dbg !1893
  %301 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !1894
  store i32 %301, i32* %11, align 4, !dbg !1893
  %302 = load i32, i32* %11, align 4, !dbg !1895
  %303 = icmp ne i32 %302, 0, !dbg !1895
  br i1 %303, label %304, label %305, !dbg !1898

304:                                              ; preds = %300
  call void @ioError() #7, !dbg !1895
  unreachable, !dbg !1895

305:                                              ; preds = %300
  br label %306, !dbg !1899

306:                                              ; preds = %305, %297
  br label %307

307:                                              ; preds = %306, %296
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1900
  %308 = load i8, i8* %7, align 1, !dbg !1901
  %309 = icmp ne i8 %308, 0, !dbg !1901
  br i1 %309, label %310, label %319, !dbg !1903

310:                                              ; preds = %307
  %311 = load i32, i32* @verbosity, align 4, !dbg !1904
  %312 = icmp sge i32 %311, 1, !dbg !1907
  br i1 %312, label %313, label %318, !dbg !1908

313:                                              ; preds = %310
  %314 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1909
  %315 = getelementptr inbounds %struct._reent, %struct._reent* %314, i32 0, i32 3, !dbg !1909
  %316 = load %struct.__sFILE*, %struct.__sFILE** %315, align 4, !dbg !1909
  %317 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %316, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0)), !dbg !1910
  br label %318, !dbg !1910

318:                                              ; preds = %313, %310
  br label %334, !dbg !1911

319:                                              ; preds = %307
  call void @setExit(i32 2), !dbg !1912
  %320 = load i32, i32* @verbosity, align 4, !dbg !1914
  %321 = icmp sge i32 %320, 1, !dbg !1916
  br i1 %321, label %322, label %327, !dbg !1917

322:                                              ; preds = %319
  %323 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1918
  %324 = getelementptr inbounds %struct._reent, %struct._reent* %323, i32 0, i32 3, !dbg !1918
  %325 = load %struct.__sFILE*, %struct.__sFILE** %324, align 4, !dbg !1918
  %326 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %325, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.87, i32 0, i32 0)), !dbg !1919
  br label %333, !dbg !1919

327:                                              ; preds = %319
  %328 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1920
  %329 = getelementptr inbounds %struct._reent, %struct._reent* %328, i32 0, i32 3, !dbg !1920
  %330 = load %struct.__sFILE*, %struct.__sFILE** %329, align 4, !dbg !1920
  %331 = load i8*, i8** @progName, align 4, !dbg !1921
  %332 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %330, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.88, i32 0, i32 0), i8* %331, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1922
  br label %333

333:                                              ; preds = %327, %322
  br label %334

334:                                              ; preds = %62, %69, %90, %116, %142, %158, %188, %222, %243, %261, %333, %318
  ret void, !dbg !1923
}

; Function Attrs: noinline nounwind optnone
define internal void @setExit(i32 %0) #0 !dbg !1924 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1927, metadata !DIExpression()), !dbg !1928
  %3 = load i32, i32* %2, align 4, !dbg !1929
  %4 = load i32, i32* @exitValue, align 4, !dbg !1931
  %5 = icmp sgt i32 %3, %4, !dbg !1932
  br i1 %5, label %6, label %8, !dbg !1933

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4, !dbg !1934
  store i32 %7, i32* @exitValue, align 4, !dbg !1935
  br label %8, !dbg !1936

8:                                                ; preds = %6, %1
  ret void, !dbg !1937
}

; Function Attrs: noinline nounwind optnone
define internal void @testf(i8* %0) #0 !dbg !1938 {
  %2 = alloca i8*, align 4
  %3 = alloca %struct.__sFILE*, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.stat, align 8
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1939, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.declare(metadata %struct.__sFILE** %3, metadata !1941, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1943, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !1945, metadata !DIExpression()), !dbg !1946
  store i8 0, i8* @deleteOutputOnInterrupt, align 1, !dbg !1947
  %6 = load i8*, i8** %2, align 4, !dbg !1948
  %7 = icmp eq i8* %6, null, !dbg !1950
  br i1 %7, label %8, label %12, !dbg !1951

8:                                                ; preds = %1
  %9 = load i32, i32* @srcMode, align 4, !dbg !1952
  %10 = icmp ne i32 %9, 1, !dbg !1953
  br i1 %10, label %11, label %12, !dbg !1954

11:                                               ; preds = %8
  call void @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.96, i32 0, i32 0)) #7, !dbg !1955
  unreachable, !dbg !1955

12:                                               ; preds = %8, %1
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)), !dbg !1956
  %13 = load i32, i32* @srcMode, align 4, !dbg !1957
  switch i32 %13, label %19 [
    i32 1, label %14
    i32 3, label %15
    i32 2, label %17
  ], !dbg !1958

14:                                               ; preds = %12
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0)), !dbg !1959
  br label %19, !dbg !1961

15:                                               ; preds = %12
  %16 = load i8*, i8** %2, align 4, !dbg !1962
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %16), !dbg !1963
  br label %19, !dbg !1964

17:                                               ; preds = %12
  %18 = load i8*, i8** %2, align 4, !dbg !1965
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %18), !dbg !1966
  br label %19, !dbg !1967

19:                                               ; preds = %12, %17, %15, %14
  %20 = load i32, i32* @srcMode, align 4, !dbg !1968
  %21 = icmp ne i32 %20, 1, !dbg !1970
  br i1 %21, label %22, label %36, !dbg !1971

22:                                               ; preds = %19
  %23 = call zeroext i8 @containsDubiousChars(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1972
  %24 = zext i8 %23 to i32, !dbg !1972
  %25 = icmp ne i32 %24, 0, !dbg !1972
  br i1 %25, label %26, label %36, !dbg !1973

26:                                               ; preds = %22
  %27 = load i8, i8* @noisy, align 1, !dbg !1974
  %28 = icmp ne i8 %27, 0, !dbg !1974
  br i1 %28, label %29, label %35, !dbg !1977

29:                                               ; preds = %26
  %30 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1978
  %31 = getelementptr inbounds %struct._reent, %struct._reent* %30, i32 0, i32 3, !dbg !1978
  %32 = load %struct.__sFILE*, %struct.__sFILE** %31, align 4, !dbg !1978
  %33 = load i8*, i8** @progName, align 4, !dbg !1979
  %34 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.58, i32 0, i32 0), i8* %33, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1980
  br label %35, !dbg !1980

35:                                               ; preds = %29, %26
  call void @setExit(i32 1), !dbg !1981
  br label %137, !dbg !1982

36:                                               ; preds = %22, %19
  %37 = load i32, i32* @srcMode, align 4, !dbg !1983
  %38 = icmp ne i32 %37, 1, !dbg !1985
  br i1 %38, label %39, label %51, !dbg !1986

39:                                               ; preds = %36
  %40 = call zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !1987
  %41 = icmp ne i8 %40, 0, !dbg !1987
  br i1 %41, label %51, label %42, !dbg !1988

42:                                               ; preds = %39
  %43 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !1989
  %44 = getelementptr inbounds %struct._reent, %struct._reent* %43, i32 0, i32 3, !dbg !1989
  %45 = load %struct.__sFILE*, %struct.__sFILE** %44, align 4, !dbg !1989
  %46 = load i8*, i8** @progName, align 4, !dbg !1991
  %47 = call i32* @__errno(), !dbg !1992
  %48 = load i32, i32* %47, align 4, !dbg !1992
  %49 = call i8* @strerror(i32 %48), !dbg !1993
  %50 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.97, i32 0, i32 0), i8* %46, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %49), !dbg !1994
  call void @setExit(i32 1), !dbg !1995
  br label %137, !dbg !1996

51:                                               ; preds = %39, %36
  %52 = load i32, i32* @srcMode, align 4, !dbg !1997
  %53 = icmp ne i32 %52, 1, !dbg !1999
  br i1 %53, label %54, label %67, !dbg !2000

54:                                               ; preds = %51
  %55 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* %5), !dbg !2001
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 2, !dbg !2003
  %57 = load i32, i32* %56, align 4, !dbg !2003
  %58 = and i32 %57, 61440, !dbg !2003
  %59 = icmp eq i32 %58, 16384, !dbg !2003
  br i1 %59, label %60, label %66, !dbg !2005

60:                                               ; preds = %54
  %61 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2006
  %62 = getelementptr inbounds %struct._reent, %struct._reent* %61, i32 0, i32 3, !dbg !2006
  %63 = load %struct.__sFILE*, %struct.__sFILE** %62, align 4, !dbg !2006
  %64 = load i8*, i8** @progName, align 4, !dbg !2008
  %65 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.61, i32 0, i32 0), i8* %64, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !2009
  call void @setExit(i32 1), !dbg !2010
  br label %137, !dbg !2011

66:                                               ; preds = %54
  br label %67, !dbg !2012

67:                                               ; preds = %66, %51
  %68 = load i32, i32* @srcMode, align 4, !dbg !2013
  switch i32 %68, label %106 [
    i32 1, label %69
    i32 2, label %92
    i32 3, label %92
  ], !dbg !2014

69:                                               ; preds = %67
  %70 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2015
  %71 = getelementptr inbounds %struct._reent, %struct._reent* %70, i32 0, i32 1, !dbg !2015
  %72 = load %struct.__sFILE*, %struct.__sFILE** %71, align 4, !dbg !2015
  %73 = call i32 @fileno(%struct.__sFILE* %72), !dbg !2018
  %74 = call i32 @isatty(i32 %73), !dbg !2019
  %75 = icmp ne i32 %74, 0, !dbg !2019
  br i1 %75, label %76, label %88, !dbg !2020

76:                                               ; preds = %69
  %77 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2021
  %78 = getelementptr inbounds %struct._reent, %struct._reent* %77, i32 0, i32 3, !dbg !2021
  %79 = load %struct.__sFILE*, %struct.__sFILE** %78, align 4, !dbg !2021
  %80 = load i8*, i8** @progName, align 4, !dbg !2023
  %81 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %79, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.83, i32 0, i32 0), i8* %80), !dbg !2024
  %82 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2025
  %83 = getelementptr inbounds %struct._reent, %struct._reent* %82, i32 0, i32 3, !dbg !2025
  %84 = load %struct.__sFILE*, %struct.__sFILE** %83, align 4, !dbg !2025
  %85 = load i8*, i8** @progName, align 4, !dbg !2026
  %86 = load i8*, i8** @progName, align 4, !dbg !2027
  %87 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.67, i32 0, i32 0), i8* %85, i8* %86), !dbg !2028
  call void @setExit(i32 1), !dbg !2029
  br label %137, !dbg !2030

88:                                               ; preds = %69
  %89 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2031
  %90 = getelementptr inbounds %struct._reent, %struct._reent* %89, i32 0, i32 1, !dbg !2031
  %91 = load %struct.__sFILE*, %struct.__sFILE** %90, align 4, !dbg !2031
  store %struct.__sFILE* %91, %struct.__sFILE** %3, align 4, !dbg !2032
  br label %107, !dbg !2033

92:                                               ; preds = %67, %67
  %93 = call %struct.__sFILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)), !dbg !2034
  store %struct.__sFILE* %93, %struct.__sFILE** %3, align 4, !dbg !2035
  %94 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !2036
  %95 = icmp eq %struct.__sFILE* %94, null, !dbg !2038
  br i1 %95, label %96, label %105, !dbg !2039

96:                                               ; preds = %92
  %97 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2040
  %98 = getelementptr inbounds %struct._reent, %struct._reent* %97, i32 0, i32 3, !dbg !2040
  %99 = load %struct.__sFILE*, %struct.__sFILE** %98, align 4, !dbg !2040
  %100 = load i8*, i8** @progName, align 4, !dbg !2042
  %101 = call i32* @__errno(), !dbg !2043
  %102 = load i32, i32* %101, align 4, !dbg !2043
  %103 = call i8* @strerror(i32 %102), !dbg !2044
  %104 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.84, i32 0, i32 0), i8* %100, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %103), !dbg !2045
  call void @setExit(i32 1), !dbg !2046
  br label %137, !dbg !2047

105:                                              ; preds = %92
  br label %107, !dbg !2048

106:                                              ; preds = %67
  call void @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.98, i32 0, i32 0)) #7, !dbg !2049
  unreachable, !dbg !2049

107:                                              ; preds = %105, %88
  %108 = load i32, i32* @verbosity, align 4, !dbg !2050
  %109 = icmp sge i32 %108, 1, !dbg !2052
  br i1 %109, label %110, label %119, !dbg !2053

110:                                              ; preds = %107
  %111 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2054
  %112 = getelementptr inbounds %struct._reent, %struct._reent* %111, i32 0, i32 3, !dbg !2054
  %113 = load %struct.__sFILE*, %struct.__sFILE** %112, align 4, !dbg !2054
  %114 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !2056
  call void @pad(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !2057
  %115 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2058
  %116 = getelementptr inbounds %struct._reent, %struct._reent* %115, i32 0, i32 3, !dbg !2058
  %117 = load %struct.__sFILE*, %struct.__sFILE** %116, align 4, !dbg !2058
  %118 = call i32 @fflush(%struct.__sFILE* %117), !dbg !2059
  br label %119, !dbg !2060

119:                                              ; preds = %110, %107
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !2061
  %120 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !2062
  %121 = call zeroext i8 @testStream(%struct.__sFILE* %120), !dbg !2063
  store i8 %121, i8* %4, align 1, !dbg !2064
  %122 = load i8, i8* %4, align 1, !dbg !2065
  %123 = zext i8 %122 to i32, !dbg !2065
  %124 = icmp ne i32 %123, 0, !dbg !2065
  br i1 %124, label %125, label %133, !dbg !2067

125:                                              ; preds = %119
  %126 = load i32, i32* @verbosity, align 4, !dbg !2068
  %127 = icmp sge i32 %126, 1, !dbg !2069
  br i1 %127, label %128, label %133, !dbg !2070

128:                                              ; preds = %125
  %129 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2071
  %130 = getelementptr inbounds %struct._reent, %struct._reent* %129, i32 0, i32 3, !dbg !2071
  %131 = load %struct.__sFILE*, %struct.__sFILE** %130, align 4, !dbg !2071
  %132 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.99, i32 0, i32 0)), !dbg !2072
  br label %133, !dbg !2072

133:                                              ; preds = %128, %125, %119
  %134 = load i8, i8* %4, align 1, !dbg !2073
  %135 = icmp ne i8 %134, 0, !dbg !2073
  br i1 %135, label %137, label %136, !dbg !2075

136:                                              ; preds = %133
  store i8 1, i8* @testFailsExist, align 1, !dbg !2076
  br label %137, !dbg !2077

137:                                              ; preds = %35, %42, %60, %76, %96, %136, %133
  ret void, !dbg !2078
}

declare dso_local void @free(i8*) #2

declare dso_local i32 @write(i32, i8*, i32) #2

; Function Attrs: noreturn
declare dso_local void @_exit(i32) #3

declare dso_local i8* @strncpy(i8*, i8*, i32) #2

declare dso_local i8* @getenv(i8*) #2

; Function Attrs: noinline nounwind optnone
define internal %struct.zzzz* @mkCell() #0 !dbg !2079 {
  %1 = alloca %struct.zzzz*, align 4
  call void @llvm.dbg.declare(metadata %struct.zzzz** %1, metadata !2082, metadata !DIExpression()), !dbg !2083
  %2 = call i8* @myMalloc(i32 8), !dbg !2084
  %3 = bitcast i8* %2 to %struct.zzzz*, !dbg !2085
  store %struct.zzzz* %3, %struct.zzzz** %1, align 4, !dbg !2086
  %4 = load %struct.zzzz*, %struct.zzzz** %1, align 4, !dbg !2087
  %5 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %4, i32 0, i32 0, !dbg !2088
  store i8* null, i8** %5, align 4, !dbg !2089
  %6 = load %struct.zzzz*, %struct.zzzz** %1, align 4, !dbg !2090
  %7 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %6, i32 0, i32 1, !dbg !2091
  store %struct.zzzz* null, %struct.zzzz** %7, align 4, !dbg !2092
  %8 = load %struct.zzzz*, %struct.zzzz** %1, align 4, !dbg !2093
  ret %struct.zzzz* %8, !dbg !2094
}

; Function Attrs: noinline nounwind optnone
define internal i8* @myMalloc(i32 %0) #0 !dbg !2095 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2098, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2100, metadata !DIExpression()), !dbg !2101
  %4 = load i32, i32* %2, align 4, !dbg !2102
  %5 = call noalias i8* @malloc(i32 %4) #8, !dbg !2103
  store i8* %5, i8** %3, align 4, !dbg !2104
  %6 = load i8*, i8** %3, align 4, !dbg !2105
  %7 = icmp eq i8* %6, null, !dbg !2107
  br i1 %7, label %8, label %9, !dbg !2108

8:                                                ; preds = %1
  call void @outOfMemory() #7, !dbg !2109
  unreachable, !dbg !2109

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 4, !dbg !2110
  ret i8* %10, !dbg !2111
}

declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: allocsize(0)
declare dso_local noalias i8* @malloc(i32) #4

; Function Attrs: noinline noreturn nounwind optnone
define internal void @outOfMemory() #5 !dbg !2112 {
  %1 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2113
  %2 = getelementptr inbounds %struct._reent, %struct._reent* %1, i32 0, i32 3, !dbg !2113
  %3 = load %struct.__sFILE*, %struct.__sFILE** %2, align 4, !dbg !2113
  %4 = load i8*, i8** @progName, align 4, !dbg !2114
  %5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.42, i32 0, i32 0), i8* %4), !dbg !2115
  call void @showFileNames(), !dbg !2116
  call void @cleanUpAndFail(i32 1) #7, !dbg !2117
  unreachable, !dbg !2117
}

; Function Attrs: noinline nounwind optnone
define internal void @showFileNames() #0 !dbg !2118 {
  %1 = load i8, i8* @noisy, align 1, !dbg !2119
  %2 = icmp ne i8 %1, 0, !dbg !2119
  br i1 %2, label %3, label %8, !dbg !2121

3:                                                ; preds = %0
  %4 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2122
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i32 0, i32 3, !dbg !2122
  %6 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !2122
  %7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !2123
  br label %8, !dbg !2123

8:                                                ; preds = %3, %0
  ret void, !dbg !2124
}

; Function Attrs: noinline noreturn nounwind optnone
define internal void @cleanUpAndFail(i32 %0) #5 !dbg !2125 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2126, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2128, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !2130, metadata !DIExpression()), !dbg !2131
  %5 = load i32, i32* @srcMode, align 4, !dbg !2132
  %6 = icmp eq i32 %5, 3, !dbg !2134
  br i1 %6, label %7, label %66, !dbg !2135

7:                                                ; preds = %1
  %8 = load i32, i32* @opMode, align 4, !dbg !2136
  %9 = icmp ne i32 %8, 3, !dbg !2137
  br i1 %9, label %10, label %66, !dbg !2138

10:                                               ; preds = %7
  %11 = load i8, i8* @deleteOutputOnInterrupt, align 1, !dbg !2139
  %12 = zext i8 %11 to i32, !dbg !2139
  %13 = icmp ne i32 %12, 0, !dbg !2139
  br i1 %13, label %14, label %66, !dbg !2140

14:                                               ; preds = %10
  %15 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* %4), !dbg !2141
  store i32 %15, i32* %3, align 4, !dbg !2143
  %16 = load i32, i32* %3, align 4, !dbg !2144
  %17 = icmp eq i32 %16, 0, !dbg !2146
  br i1 %17, label %18, label %44, !dbg !2147

18:                                               ; preds = %14
  %19 = load i8, i8* @noisy, align 1, !dbg !2148
  %20 = icmp ne i8 %19, 0, !dbg !2148
  br i1 %20, label %21, label %27, !dbg !2151

21:                                               ; preds = %18
  %22 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2152
  %23 = getelementptr inbounds %struct._reent, %struct._reent* %22, i32 0, i32 3, !dbg !2152
  %24 = load %struct.__sFILE*, %struct.__sFILE** %23, align 4, !dbg !2152
  %25 = load i8*, i8** @progName, align 4, !dbg !2153
  %26 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i32 0, i32 0), i8* %25, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !2154
  br label %27, !dbg !2154

27:                                               ; preds = %21, %18
  %28 = load %struct.__sFILE*, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !2155
  %29 = icmp ne %struct.__sFILE* %28, null, !dbg !2157
  br i1 %29, label %30, label %33, !dbg !2158

30:                                               ; preds = %27
  %31 = load %struct.__sFILE*, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !2159
  %32 = call i32 @fclose(%struct.__sFILE* %31), !dbg !2160
  br label %33, !dbg !2160

33:                                               ; preds = %30, %27
  %34 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !2161
  store i32 %34, i32* %3, align 4, !dbg !2162
  %35 = load i32, i32* %3, align 4, !dbg !2163
  %36 = icmp ne i32 %35, 0, !dbg !2165
  br i1 %36, label %37, label %43, !dbg !2166

37:                                               ; preds = %33
  %38 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2167
  %39 = getelementptr inbounds %struct._reent, %struct._reent* %38, i32 0, i32 3, !dbg !2167
  %40 = load %struct.__sFILE*, %struct.__sFILE** %39, align 4, !dbg !2167
  %41 = load i8*, i8** @progName, align 4, !dbg !2168
  %42 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %40, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.45, i32 0, i32 0), i8* %41), !dbg !2169
  br label %43, !dbg !2169

43:                                               ; preds = %37, %33
  br label %65, !dbg !2170

44:                                               ; preds = %14
  %45 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2171
  %46 = getelementptr inbounds %struct._reent, %struct._reent* %45, i32 0, i32 3, !dbg !2171
  %47 = load %struct.__sFILE*, %struct.__sFILE** %46, align 4, !dbg !2171
  %48 = load i8*, i8** @progName, align 4, !dbg !2173
  %49 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.46, i32 0, i32 0), i8* %48), !dbg !2174
  %50 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2175
  %51 = getelementptr inbounds %struct._reent, %struct._reent* %50, i32 0, i32 3, !dbg !2175
  %52 = load %struct.__sFILE*, %struct.__sFILE** %51, align 4, !dbg !2175
  %53 = load i8*, i8** @progName, align 4, !dbg !2176
  %54 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %52, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.47, i32 0, i32 0), i8* %53), !dbg !2177
  %55 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2178
  %56 = getelementptr inbounds %struct._reent, %struct._reent* %55, i32 0, i32 3, !dbg !2178
  %57 = load %struct.__sFILE*, %struct.__sFILE** %56, align 4, !dbg !2178
  %58 = load i8*, i8** @progName, align 4, !dbg !2179
  %59 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.48, i32 0, i32 0), i8* %58, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)), !dbg !2180
  %60 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2181
  %61 = getelementptr inbounds %struct._reent, %struct._reent* %60, i32 0, i32 3, !dbg !2181
  %62 = load %struct.__sFILE*, %struct.__sFILE** %61, align 4, !dbg !2181
  %63 = load i8*, i8** @progName, align 4, !dbg !2182
  %64 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %62, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.49, i32 0, i32 0), i8* %63), !dbg !2183
  br label %65

65:                                               ; preds = %44, %43
  br label %66, !dbg !2184

66:                                               ; preds = %65, %10, %7, %1
  %67 = load i8, i8* @noisy, align 1, !dbg !2185
  %68 = zext i8 %67 to i32, !dbg !2185
  %69 = icmp ne i32 %68, 0, !dbg !2185
  br i1 %69, label %70, label %88, !dbg !2187

70:                                               ; preds = %66
  %71 = load i32, i32* @numFileNames, align 4, !dbg !2188
  %72 = icmp sgt i32 %71, 0, !dbg !2189
  br i1 %72, label %73, label %88, !dbg !2190

73:                                               ; preds = %70
  %74 = load i32, i32* @numFilesProcessed, align 4, !dbg !2191
  %75 = load i32, i32* @numFileNames, align 4, !dbg !2192
  %76 = icmp slt i32 %74, %75, !dbg !2193
  br i1 %76, label %77, label %88, !dbg !2194

77:                                               ; preds = %73
  %78 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2195
  %79 = getelementptr inbounds %struct._reent, %struct._reent* %78, i32 0, i32 3, !dbg !2195
  %80 = load %struct.__sFILE*, %struct.__sFILE** %79, align 4, !dbg !2195
  %81 = load i8*, i8** @progName, align 4, !dbg !2197
  %82 = load i8*, i8** @progName, align 4, !dbg !2198
  %83 = load i32, i32* @numFileNames, align 4, !dbg !2199
  %84 = load i32, i32* @numFileNames, align 4, !dbg !2200
  %85 = load i32, i32* @numFilesProcessed, align 4, !dbg !2201
  %86 = sub nsw i32 %84, %85, !dbg !2202
  %87 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %80, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.50, i32 0, i32 0), i8* %81, i8* %82, i32 %83, i32 %86), !dbg !2203
  br label %88, !dbg !2204

88:                                               ; preds = %77, %73, %70, %66
  %89 = load i32, i32* %2, align 4, !dbg !2205
  call void @setExit(i32 %89), !dbg !2206
  %90 = load i32, i32* @exitValue, align 4, !dbg !2207
  call void @exit(i32 %90) #7, !dbg !2208
  unreachable, !dbg !2208
}

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @fclose(%struct.__sFILE*) #2

declare dso_local i32 @remove(i8*) #2

declare dso_local i8* @BZ2_bzlibVersion() #2

; Function Attrs: noinline noreturn nounwind optnone
define internal void @panic(i8* %0) #5 !dbg !2209 {
  %2 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2212, metadata !DIExpression()), !dbg !2213
  %3 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2214
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %3, i32 0, i32 3, !dbg !2214
  %5 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !2214
  %6 = load i8*, i8** @progName, align 4, !dbg !2215
  %7 = load i8*, i8** %2, align 4, !dbg !2216
  %8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.73, i32 0, i32 0), i8* %6, i8* %7), !dbg !2217
  call void @showFileNames(), !dbg !2218
  call void @cleanUpAndFail(i32 3) #7, !dbg !2219
  unreachable, !dbg !2219
}

declare dso_local i8* @strcat(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @containsDubiousChars(i8* %0) #0 !dbg !2220 {
  %2 = alloca i8*, align 4
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2223, metadata !DIExpression()), !dbg !2224
  ret i8 0, !dbg !2225
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @fileExists(i8* %0) #0 !dbg !2226 {
  %2 = alloca i8*, align 4
  %3 = alloca %struct.__sFILE*, align 4
  %4 = alloca i8, align 1
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2227, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.declare(metadata %struct.__sFILE** %3, metadata !2229, metadata !DIExpression()), !dbg !2230
  %5 = load i8*, i8** %2, align 4, !dbg !2231
  %6 = call %struct.__sFILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0)), !dbg !2232
  store %struct.__sFILE* %6, %struct.__sFILE** %3, align 4, !dbg !2230
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2233, metadata !DIExpression()), !dbg !2234
  %7 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !2235
  %8 = icmp ne %struct.__sFILE* %7, null, !dbg !2236
  %9 = zext i1 %8 to i32, !dbg !2236
  %10 = trunc i32 %9 to i8, !dbg !2237
  store i8 %10, i8* %4, align 1, !dbg !2234
  %11 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !2238
  %12 = icmp ne %struct.__sFILE* %11, null, !dbg !2240
  br i1 %12, label %13, label %16, !dbg !2241

13:                                               ; preds = %1
  %14 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !2242
  %15 = call i32 @fclose(%struct.__sFILE* %14), !dbg !2243
  br label %16, !dbg !2243

16:                                               ; preds = %13, %1
  %17 = load i8, i8* %4, align 1, !dbg !2244
  ret i8 %17, !dbg !2245
}

declare dso_local i8* @strerror(i32) #2

declare dso_local i32* @__errno() #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @hasSuffix(i8* %0, i8* %1) #0 !dbg !2246 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2249, metadata !DIExpression()), !dbg !2250
  store i8* %1, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2251, metadata !DIExpression()), !dbg !2252
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2253, metadata !DIExpression()), !dbg !2254
  %8 = load i8*, i8** %4, align 4, !dbg !2255
  %9 = call i32 @strlen(i8* %8), !dbg !2256
  store i32 %9, i32* %6, align 4, !dbg !2254
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2257, metadata !DIExpression()), !dbg !2258
  %10 = load i8*, i8** %5, align 4, !dbg !2259
  %11 = call i32 @strlen(i8* %10), !dbg !2260
  store i32 %11, i32* %7, align 4, !dbg !2258
  %12 = load i32, i32* %6, align 4, !dbg !2261
  %13 = load i32, i32* %7, align 4, !dbg !2263
  %14 = icmp slt i32 %12, %13, !dbg !2264
  br i1 %14, label %15, label %16, !dbg !2265

15:                                               ; preds = %2
  store i8 0, i8* %3, align 1, !dbg !2266
  br label %28, !dbg !2266

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 4, !dbg !2267
  %18 = load i32, i32* %6, align 4, !dbg !2269
  %19 = getelementptr inbounds i8, i8* %17, i32 %18, !dbg !2270
  %20 = load i32, i32* %7, align 4, !dbg !2271
  %21 = sub i32 0, %20, !dbg !2272
  %22 = getelementptr inbounds i8, i8* %19, i32 %21, !dbg !2272
  %23 = load i8*, i8** %5, align 4, !dbg !2273
  %24 = call i32 @strcmp(i8* %22, i8* %23), !dbg !2274
  %25 = icmp eq i32 %24, 0, !dbg !2275
  br i1 %25, label %26, label %27, !dbg !2276

26:                                               ; preds = %16
  store i8 1, i8* %3, align 1, !dbg !2277
  br label %28, !dbg !2277

27:                                               ; preds = %16
  store i8 0, i8* %3, align 1, !dbg !2278
  br label %28, !dbg !2278

28:                                               ; preds = %27, %26, %15
  %29 = load i8, i8* %3, align 1, !dbg !2279
  ret i8 %29, !dbg !2279
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @notAStandardFile(i8* %0) #0 !dbg !2280 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2281, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2283, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !2285, metadata !DIExpression()), !dbg !2286
  %6 = load i8*, i8** %3, align 4, !dbg !2287
  %7 = call i32 bitcast (i32 (...)* @lstat to i32 (i8*, %struct.stat*)*)(i8* %6, %struct.stat* %5), !dbg !2288
  store i32 %7, i32* %4, align 4, !dbg !2289
  %8 = load i32, i32* %4, align 4, !dbg !2290
  %9 = icmp ne i32 %8, 0, !dbg !2292
  br i1 %9, label %10, label %11, !dbg !2293

10:                                               ; preds = %1
  store i8 1, i8* %2, align 1, !dbg !2294
  br label %18, !dbg !2294

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 2, !dbg !2295
  %13 = load i32, i32* %12, align 4, !dbg !2295
  %14 = and i32 %13, 61440, !dbg !2295
  %15 = icmp eq i32 %14, 32768, !dbg !2295
  br i1 %15, label %16, label %17, !dbg !2297

16:                                               ; preds = %11
  store i8 0, i8* %2, align 1, !dbg !2298
  br label %18, !dbg !2298

17:                                               ; preds = %11
  store i8 1, i8* %2, align 1, !dbg !2299
  br label %18, !dbg !2299

18:                                               ; preds = %17, %16, %10
  %19 = load i8, i8* %2, align 1, !dbg !2300
  ret i8 %19, !dbg !2300
}

; Function Attrs: noinline nounwind optnone
define internal i32 @countHardLinks(i8* %0) #0 !dbg !2301 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2304, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2306, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !2308, metadata !DIExpression()), !dbg !2309
  %6 = load i8*, i8** %3, align 4, !dbg !2310
  %7 = call i32 bitcast (i32 (...)* @lstat to i32 (i8*, %struct.stat*)*)(i8* %6, %struct.stat* %5), !dbg !2311
  store i32 %7, i32* %4, align 4, !dbg !2312
  %8 = load i32, i32* %4, align 4, !dbg !2313
  %9 = icmp ne i32 %8, 0, !dbg !2315
  br i1 %9, label %10, label %11, !dbg !2316

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !2317
  br label %16, !dbg !2317

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3, !dbg !2318
  %13 = load i16, i16* %12, align 8, !dbg !2318
  %14 = zext i16 %13 to i32, !dbg !2319
  %15 = sub nsw i32 %14, 1, !dbg !2320
  store i32 %15, i32* %2, align 4, !dbg !2321
  br label %16, !dbg !2321

16:                                               ; preds = %11, %10
  %17 = load i32, i32* %2, align 4, !dbg !2322
  ret i32 %17, !dbg !2322
}

; Function Attrs: noinline nounwind optnone
define internal void @saveInputFileMetaInfo(i8* %0) #0 !dbg !2323 {
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2324, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2326, metadata !DIExpression()), !dbg !2327
  %4 = load i8*, i8** %2, align 4, !dbg !2328
  %5 = call i32 @stat(i8* %4, %struct.stat* @fileMetaInfo), !dbg !2329
  store i32 %5, i32* %3, align 4, !dbg !2330
  %6 = load i32, i32* %3, align 4, !dbg !2331
  %7 = icmp ne i32 %6, 0, !dbg !2331
  br i1 %7, label %8, label %9, !dbg !2334

8:                                                ; preds = %1
  call void @ioError() #7, !dbg !2331
  unreachable, !dbg !2331

9:                                                ; preds = %1
  ret void, !dbg !2335
}

declare dso_local i32 @isatty(i32) #2

declare dso_local i32 @fileno(%struct.__sFILE*) #2

declare dso_local %struct.__sFILE* @fopen(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone
define internal %struct.__sFILE* @fopen_output_safely(i8* %0, i8* %1) #0 !dbg !2336 {
  %3 = alloca %struct.__sFILE*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca %struct.__sFILE*, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 4
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2339, metadata !DIExpression()), !dbg !2340
  store i8* %1, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2341, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.declare(metadata %struct.__sFILE** %6, metadata !2343, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2345, metadata !DIExpression()), !dbg !2346
  %8 = load i8*, i8** %4, align 4, !dbg !2347
  %9 = call i32 (i8*, i32, ...) @open(i8* %8, i32 2561, i32 384), !dbg !2348
  store i32 %9, i32* %7, align 4, !dbg !2349
  %10 = load i32, i32* %7, align 4, !dbg !2350
  %11 = icmp eq i32 %10, -1, !dbg !2352
  br i1 %11, label %12, label %13, !dbg !2353

12:                                               ; preds = %2
  store %struct.__sFILE* null, %struct.__sFILE** %3, align 4, !dbg !2354
  br label %24, !dbg !2354

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4, !dbg !2355
  %15 = load i8*, i8** %5, align 4, !dbg !2356
  %16 = call %struct.__sFILE* @fdopen(i32 %14, i8* %15), !dbg !2357
  store %struct.__sFILE* %16, %struct.__sFILE** %6, align 4, !dbg !2358
  %17 = load %struct.__sFILE*, %struct.__sFILE** %6, align 4, !dbg !2359
  %18 = icmp eq %struct.__sFILE* %17, null, !dbg !2361
  br i1 %18, label %19, label %22, !dbg !2362

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4, !dbg !2363
  %21 = call i32 @close(i32 %20), !dbg !2364
  br label %22, !dbg !2364

22:                                               ; preds = %19, %13
  %23 = load %struct.__sFILE*, %struct.__sFILE** %6, align 4, !dbg !2365
  store %struct.__sFILE* %23, %struct.__sFILE** %3, align 4, !dbg !2366
  br label %24, !dbg !2366

24:                                               ; preds = %22, %12
  %25 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !2367
  ret %struct.__sFILE* %25, !dbg !2367
}

; Function Attrs: noinline nounwind optnone
define internal void @pad(i8* %0) #0 !dbg !2368 {
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2369, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2371, metadata !DIExpression()), !dbg !2372
  %4 = load i8*, i8** %2, align 4, !dbg !2373
  %5 = call i32 @strlen(i8* %4), !dbg !2375
  %6 = load i32, i32* @longestFileName, align 4, !dbg !2376
  %7 = icmp sge i32 %5, %6, !dbg !2377
  br i1 %7, label %8, label %9, !dbg !2378

8:                                                ; preds = %1
  br label %25, !dbg !2379

9:                                                ; preds = %1
  store i32 1, i32* %3, align 4, !dbg !2380
  br label %10, !dbg !2382

10:                                               ; preds = %22, %9
  %11 = load i32, i32* %3, align 4, !dbg !2383
  %12 = load i32, i32* @longestFileName, align 4, !dbg !2385
  %13 = load i8*, i8** %2, align 4, !dbg !2386
  %14 = call i32 @strlen(i8* %13), !dbg !2387
  %15 = sub nsw i32 %12, %14, !dbg !2388
  %16 = icmp sle i32 %11, %15, !dbg !2389
  br i1 %16, label %17, label %25, !dbg !2390

17:                                               ; preds = %10
  %18 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2391
  %19 = getelementptr inbounds %struct._reent, %struct._reent* %18, i32 0, i32 3, !dbg !2391
  %20 = load %struct.__sFILE*, %struct.__sFILE** %19, align 4, !dbg !2391
  %21 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0)), !dbg !2392
  br label %22, !dbg !2392

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4, !dbg !2393
  %24 = add nsw i32 %23, 1, !dbg !2393
  store i32 %24, i32* %3, align 4, !dbg !2393
  br label %10, !dbg !2394, !llvm.loop !2395

25:                                               ; preds = %8, %10
  ret void, !dbg !2397
}

declare dso_local i32 @fflush(%struct.__sFILE*) #2

; Function Attrs: noinline nounwind optnone
define internal void @compressStream(%struct.__sFILE* %0, %struct.__sFILE* %1) #0 !dbg !2398 {
  %3 = alloca %struct.__sFILE*, align 4
  %4 = alloca %struct.__sFILE*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca [5000 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [32 x i8], align 1
  %17 = alloca [32 x i8], align 1
  %18 = alloca %struct.UInt64, align 1
  %19 = alloca %struct.UInt64, align 1
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store %struct.__sFILE* %0, %struct.__sFILE** %3, align 4
  call void @llvm.dbg.declare(metadata %struct.__sFILE** %3, metadata !2401, metadata !DIExpression()), !dbg !2402
  store %struct.__sFILE* %1, %struct.__sFILE** %4, align 4
  call void @llvm.dbg.declare(metadata %struct.__sFILE** %4, metadata !2403, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2405, metadata !DIExpression()), !dbg !2409
  store i8* null, i8** %5, align 4, !dbg !2409
  call void @llvm.dbg.declare(metadata [5000 x i8]* %6, metadata !2410, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2415, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2417, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2420, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2422, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2424, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2426, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2428, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2430, metadata !DIExpression()), !dbg !2431
  %22 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !2432
  %23 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %22, i32 0, i32 3, !dbg !2432
  %24 = load i16, i16* %23, align 4, !dbg !2432
  %25 = sext i16 %24 to i32, !dbg !2432
  %26 = and i32 %25, 64, !dbg !2432
  %27 = icmp ne i32 %26, 0, !dbg !2432
  br i1 %27, label %28, label %29, !dbg !2434

28:                                               ; preds = %2
  br label %185, !dbg !2435

29:                                               ; preds = %2
  %30 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !2436
  %31 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %30, i32 0, i32 3, !dbg !2436
  %32 = load i16, i16* %31, align 4, !dbg !2436
  %33 = sext i16 %32 to i32, !dbg !2436
  %34 = and i32 %33, 64, !dbg !2436
  %35 = icmp ne i32 %34, 0, !dbg !2436
  br i1 %35, label %36, label %37, !dbg !2438

36:                                               ; preds = %29
  br label %185, !dbg !2439

37:                                               ; preds = %29
  %38 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !2440
  %39 = load i32, i32* @blockSize100k, align 4, !dbg !2441
  %40 = load i32, i32* @verbosity, align 4, !dbg !2442
  %41 = load i32, i32* @workFactor, align 4, !dbg !2443
  %42 = call i8* @BZ2_bzWriteOpen(i32* %12, %struct.__sFILE* %38, i32 %39, i32 %40, i32 %41), !dbg !2444
  store i8* %42, i8** %5, align 4, !dbg !2445
  %43 = load i32, i32* %12, align 4, !dbg !2446
  %44 = icmp ne i32 %43, 0, !dbg !2448
  br i1 %44, label %45, label %46, !dbg !2449

45:                                               ; preds = %37
  br label %179, !dbg !2450

46:                                               ; preds = %37
  %47 = load i32, i32* @verbosity, align 4, !dbg !2451
  %48 = icmp sge i32 %47, 2, !dbg !2453
  br i1 %48, label %49, label %54, !dbg !2454

49:                                               ; preds = %46
  %50 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2455
  %51 = getelementptr inbounds %struct._reent, %struct._reent* %50, i32 0, i32 3, !dbg !2455
  %52 = load %struct.__sFILE*, %struct.__sFILE** %51, align 4, !dbg !2455
  %53 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)), !dbg !2456
  br label %54, !dbg !2456

54:                                               ; preds = %49, %46
  br label %55, !dbg !2457

55:                                               ; preds = %54, %82
  %56 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !2458
  %57 = call zeroext i8 @myfeof(%struct.__sFILE* %56), !dbg !2461
  %58 = icmp ne i8 %57, 0, !dbg !2461
  br i1 %58, label %59, label %60, !dbg !2462

59:                                               ; preds = %55
  br label %83, !dbg !2463

60:                                               ; preds = %55
  %61 = getelementptr inbounds [5000 x i8], [5000 x i8]* %6, i32 0, i32 0, !dbg !2464
  %62 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !2465
  %63 = call i32 @fread(i8* %61, i32 1, i32 5000, %struct.__sFILE* %62), !dbg !2466
  store i32 %63, i32* %7, align 4, !dbg !2467
  %64 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !2468
  %65 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %64, i32 0, i32 3, !dbg !2468
  %66 = load i16, i16* %65, align 4, !dbg !2468
  %67 = sext i16 %66 to i32, !dbg !2468
  %68 = and i32 %67, 64, !dbg !2468
  %69 = icmp ne i32 %68, 0, !dbg !2468
  br i1 %69, label %70, label %71, !dbg !2470

70:                                               ; preds = %60
  br label %185, !dbg !2471

71:                                               ; preds = %60
  %72 = load i32, i32* %7, align 4, !dbg !2472
  %73 = icmp sgt i32 %72, 0, !dbg !2474
  br i1 %73, label %74, label %78, !dbg !2475

74:                                               ; preds = %71
  %75 = load i8*, i8** %5, align 4, !dbg !2476
  %76 = getelementptr inbounds [5000 x i8], [5000 x i8]* %6, i32 0, i32 0, !dbg !2477
  %77 = load i32, i32* %7, align 4, !dbg !2478
  call void @BZ2_bzWrite(i32* %12, i8* %75, i8* %76, i32 %77), !dbg !2479
  br label %78, !dbg !2479

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %12, align 4, !dbg !2480
  %80 = icmp ne i32 %79, 0, !dbg !2482
  br i1 %80, label %81, label %82, !dbg !2483

81:                                               ; preds = %78
  br label %179, !dbg !2484

82:                                               ; preds = %78
  br label %55, !dbg !2457, !llvm.loop !2485

83:                                               ; preds = %59
  %84 = load i8*, i8** %5, align 4, !dbg !2487
  call void @BZ2_bzWriteClose64(i32* %12, i8* %84, i32 0, i32* %8, i32* %9, i32* %10, i32* %11), !dbg !2488
  %85 = load i32, i32* %12, align 4, !dbg !2489
  %86 = icmp ne i32 %85, 0, !dbg !2491
  br i1 %86, label %87, label %88, !dbg !2492

87:                                               ; preds = %83
  br label %179, !dbg !2493

88:                                               ; preds = %83
  %89 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !2494
  %90 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %89, i32 0, i32 3, !dbg !2494
  %91 = load i16, i16* %90, align 4, !dbg !2494
  %92 = sext i16 %91 to i32, !dbg !2494
  %93 = and i32 %92, 64, !dbg !2494
  %94 = icmp ne i32 %93, 0, !dbg !2494
  br i1 %94, label %95, label %96, !dbg !2496

95:                                               ; preds = %88
  br label %185, !dbg !2497

96:                                               ; preds = %88
  %97 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !2498
  %98 = call i32 @fflush(%struct.__sFILE* %97), !dbg !2499
  store i32 %98, i32* %14, align 4, !dbg !2500
  %99 = load i32, i32* %14, align 4, !dbg !2501
  %100 = icmp eq i32 %99, -1, !dbg !2503
  br i1 %100, label %101, label %102, !dbg !2504

101:                                              ; preds = %96
  br label %185, !dbg !2505

102:                                              ; preds = %96
  %103 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !2506
  %104 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2508
  %105 = getelementptr inbounds %struct._reent, %struct._reent* %104, i32 0, i32 2, !dbg !2508
  %106 = load %struct.__sFILE*, %struct.__sFILE** %105, align 8, !dbg !2508
  %107 = icmp ne %struct.__sFILE* %103, %106, !dbg !2509
  br i1 %107, label %108, label %122, !dbg !2510

108:                                              ; preds = %102
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2511, metadata !DIExpression()), !dbg !2513
  %109 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !2514
  %110 = call i32 @fileno(%struct.__sFILE* %109), !dbg !2515
  store i32 %110, i32* %15, align 4, !dbg !2513
  %111 = load i32, i32* %15, align 4, !dbg !2516
  %112 = icmp slt i32 %111, 0, !dbg !2518
  br i1 %112, label %113, label %114, !dbg !2519

113:                                              ; preds = %108
  br label %185, !dbg !2520

114:                                              ; preds = %108
  %115 = load i32, i32* %15, align 4, !dbg !2521
  call void @applySavedFileAttrToOutputFile(i32 %115), !dbg !2522
  %116 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !2523
  %117 = call i32 @fclose(%struct.__sFILE* %116), !dbg !2524
  store i32 %117, i32* %14, align 4, !dbg !2525
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !2526
  %118 = load i32, i32* %14, align 4, !dbg !2527
  %119 = icmp eq i32 %118, -1, !dbg !2529
  br i1 %119, label %120, label %121, !dbg !2530

120:                                              ; preds = %114
  br label %185, !dbg !2531

121:                                              ; preds = %114
  br label %122, !dbg !2532

122:                                              ; preds = %121, %102
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !2533
  %123 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !2534
  %124 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %123, i32 0, i32 3, !dbg !2534
  %125 = load i16, i16* %124, align 4, !dbg !2534
  %126 = sext i16 %125 to i32, !dbg !2534
  %127 = and i32 %126, 64, !dbg !2534
  %128 = icmp ne i32 %127, 0, !dbg !2534
  br i1 %128, label %129, label %130, !dbg !2536

129:                                              ; preds = %122
  br label %185, !dbg !2537

130:                                              ; preds = %122
  %131 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !2538
  %132 = call i32 @fclose(%struct.__sFILE* %131), !dbg !2539
  store i32 %132, i32* %14, align 4, !dbg !2540
  %133 = load i32, i32* %14, align 4, !dbg !2541
  %134 = icmp eq i32 %133, -1, !dbg !2543
  br i1 %134, label %135, label %136, !dbg !2544

135:                                              ; preds = %130
  br label %185, !dbg !2545

136:                                              ; preds = %130
  %137 = load i32, i32* @verbosity, align 4, !dbg !2546
  %138 = icmp sge i32 %137, 1, !dbg !2548
  br i1 %138, label %139, label %178, !dbg !2549

139:                                              ; preds = %136
  %140 = load i32, i32* %8, align 4, !dbg !2550
  %141 = icmp eq i32 %140, 0, !dbg !2553
  br i1 %141, label %142, label %150, !dbg !2554

142:                                              ; preds = %139
  %143 = load i32, i32* %9, align 4, !dbg !2555
  %144 = icmp eq i32 %143, 0, !dbg !2556
  br i1 %144, label %145, label %150, !dbg !2557

145:                                              ; preds = %142
  %146 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2558
  %147 = getelementptr inbounds %struct._reent, %struct._reent* %146, i32 0, i32 3, !dbg !2558
  %148 = load %struct.__sFILE*, %struct.__sFILE** %147, align 4, !dbg !2558
  %149 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %148, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.75, i32 0, i32 0)), !dbg !2560
  br label %177, !dbg !2561

150:                                              ; preds = %142, %139
  call void @llvm.dbg.declare(metadata [32 x i8]* %16, metadata !2562, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.declare(metadata [32 x i8]* %17, metadata !2566, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.declare(metadata %struct.UInt64* %18, metadata !2568, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.declare(metadata %struct.UInt64* %19, metadata !2575, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.declare(metadata double* %20, metadata !2577, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.declare(metadata double* %21, metadata !2579, metadata !DIExpression()), !dbg !2580
  %151 = load i32, i32* %8, align 4, !dbg !2581
  %152 = load i32, i32* %9, align 4, !dbg !2582
  call void @uInt64_from_UInt32s(%struct.UInt64* %18, i32 %151, i32 %152), !dbg !2583
  %153 = load i32, i32* %10, align 4, !dbg !2584
  %154 = load i32, i32* %11, align 4, !dbg !2585
  call void @uInt64_from_UInt32s(%struct.UInt64* %19, i32 %153, i32 %154), !dbg !2586
  %155 = call double @uInt64_to_double(%struct.UInt64* %18), !dbg !2587
  store double %155, double* %20, align 8, !dbg !2588
  %156 = call double @uInt64_to_double(%struct.UInt64* %19), !dbg !2589
  store double %156, double* %21, align 8, !dbg !2590
  %157 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0, !dbg !2591
  call void @uInt64_toAscii(i8* %157, %struct.UInt64* %18), !dbg !2592
  %158 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0, !dbg !2593
  call void @uInt64_toAscii(i8* %158, %struct.UInt64* %19), !dbg !2594
  %159 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2595
  %160 = getelementptr inbounds %struct._reent, %struct._reent* %159, i32 0, i32 3, !dbg !2595
  %161 = load %struct.__sFILE*, %struct.__sFILE** %160, align 4, !dbg !2595
  %162 = load double, double* %20, align 8, !dbg !2596
  %163 = load double, double* %21, align 8, !dbg !2597
  %164 = fdiv double %162, %163, !dbg !2598
  %165 = load double, double* %21, align 8, !dbg !2599
  %166 = fmul double 8.000000e+00, %165, !dbg !2600
  %167 = load double, double* %20, align 8, !dbg !2601
  %168 = fdiv double %166, %167, !dbg !2602
  %169 = load double, double* %21, align 8, !dbg !2603
  %170 = load double, double* %20, align 8, !dbg !2604
  %171 = fdiv double %169, %170, !dbg !2605
  %172 = fsub double 1.000000e+00, %171, !dbg !2606
  %173 = fmul double 1.000000e+02, %172, !dbg !2607
  %174 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0, !dbg !2608
  %175 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0, !dbg !2609
  %176 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %161, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.76, i32 0, i32 0), double %164, double %168, double %173, i8* %174, i8* %175), !dbg !2610
  br label %177

177:                                              ; preds = %150, %145
  br label %178, !dbg !2611

178:                                              ; preds = %177, %136
  ret void, !dbg !2612

179:                                              ; preds = %87, %81, %45
  call void @llvm.dbg.label(metadata !2613), !dbg !2614
  %180 = load i8*, i8** %5, align 4, !dbg !2615
  call void @BZ2_bzWriteClose64(i32* %13, i8* %180, i32 1, i32* %8, i32* %9, i32* %10, i32* %11), !dbg !2616
  %181 = load i32, i32* %12, align 4, !dbg !2617
  switch i32 %181, label %186 [
    i32 -9, label %182
    i32 -3, label %183
    i32 -6, label %184
  ], !dbg !2618

182:                                              ; preds = %179
  call void @configError() #7, !dbg !2619
  unreachable, !dbg !2619

183:                                              ; preds = %179
  call void @outOfMemory() #7, !dbg !2621
  unreachable, !dbg !2621

184:                                              ; preds = %179
  br label %185, !dbg !2621

185:                                              ; preds = %184, %135, %129, %120, %113, %101, %95, %70, %36, %28
  call void @llvm.dbg.label(metadata !2622), !dbg !2623
  call void @ioError() #7, !dbg !2624
  unreachable, !dbg !2624

186:                                              ; preds = %179
  call void @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.77, i32 0, i32 0)) #7, !dbg !2625
  unreachable, !dbg !2625
}

; Function Attrs: noinline nounwind optnone
define internal void @applySavedTimeInfoToOutputFile(i8* %0) #0 !dbg !2626 {
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.utimbuf, align 8
  store i8* %0, i8** %2, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2627, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2629, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.declare(metadata %struct.utimbuf* %4, metadata !2631, metadata !DIExpression()), !dbg !2637
  %5 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 8, i32 0), align 8, !dbg !2638
  %6 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %4, i32 0, i32 0, !dbg !2639
  store i64 %5, i64* %6, align 8, !dbg !2640
  %7 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 9, i32 0), align 8, !dbg !2641
  %8 = getelementptr inbounds %struct.utimbuf, %struct.utimbuf* %4, i32 0, i32 1, !dbg !2642
  store i64 %7, i64* %8, align 8, !dbg !2643
  %9 = load i8*, i8** %2, align 4, !dbg !2644
  %10 = call i32 bitcast (i32 (...)* @utime to i32 (i8*, %struct.utimbuf*)*)(i8* %9, %struct.utimbuf* %4), !dbg !2645
  store i32 %10, i32* %3, align 4, !dbg !2646
  %11 = load i32, i32* %3, align 4, !dbg !2647
  %12 = icmp ne i32 %11, 0, !dbg !2647
  br i1 %12, label %13, label %14, !dbg !2650

13:                                               ; preds = %1
  call void @ioError() #7, !dbg !2647
  unreachable, !dbg !2647

14:                                               ; preds = %1
  ret void, !dbg !2651
}

; Function Attrs: noinline noreturn nounwind optnone
define internal void @ioError() #5 !dbg !2652 {
  %1 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2653
  %2 = getelementptr inbounds %struct._reent, %struct._reent* %1, i32 0, i32 3, !dbg !2653
  %3 = load %struct.__sFILE*, %struct.__sFILE** %2, align 4, !dbg !2653
  %4 = load i8*, i8** @progName, align 4, !dbg !2654
  %5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.79, i32 0, i32 0), i8* %4), !dbg !2655
  %6 = load i8*, i8** @progName, align 4, !dbg !2656
  call void @perror(i8* %6), !dbg !2657
  call void @showFileNames(), !dbg !2658
  call void @cleanUpAndFail(i32 1) #7, !dbg !2659
  unreachable, !dbg !2659
}

declare dso_local i32 @lstat(...) #2

declare dso_local i32 @open(i8*, i32, ...) #2

declare dso_local %struct.__sFILE* @fdopen(i32, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i8* @BZ2_bzWriteOpen(i32*, %struct.__sFILE*, i32, i32, i32) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @myfeof(%struct.__sFILE* %0) #0 !dbg !2660 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.__sFILE*, align 4
  %4 = alloca i32, align 4
  store %struct.__sFILE* %0, %struct.__sFILE** %3, align 4
  call void @llvm.dbg.declare(metadata %struct.__sFILE** %3, metadata !2663, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2665, metadata !DIExpression()), !dbg !2666
  %5 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !2667
  %6 = call i32 @fgetc(%struct.__sFILE* %5), !dbg !2668
  store i32 %6, i32* %4, align 4, !dbg !2666
  %7 = load i32, i32* %4, align 4, !dbg !2669
  %8 = icmp eq i32 %7, -1, !dbg !2671
  br i1 %8, label %9, label %10, !dbg !2672

9:                                                ; preds = %1
  store i8 1, i8* %2, align 1, !dbg !2673
  br label %14, !dbg !2673

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4, !dbg !2674
  %12 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !2675
  %13 = call i32 @ungetc(i32 %11, %struct.__sFILE* %12), !dbg !2676
  store i8 0, i8* %2, align 1, !dbg !2677
  br label %14, !dbg !2677

14:                                               ; preds = %10, %9
  %15 = load i8, i8* %2, align 1, !dbg !2678
  ret i8 %15, !dbg !2678
}

declare dso_local i32 @fread(i8*, i32, i32, %struct.__sFILE*) #2

declare dso_local void @BZ2_bzWrite(i32*, i8*, i8*, i32) #2

declare dso_local void @BZ2_bzWriteClose64(i32*, i8*, i32, i32*, i32*, i32*, i32*) #2

; Function Attrs: noinline nounwind optnone
define internal void @applySavedFileAttrToOutputFile(i32 %0) #0 !dbg !2679 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2680, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2682, metadata !DIExpression()), !dbg !2683
  %4 = load i32, i32* %2, align 4, !dbg !2684
  %5 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 2), align 4, !dbg !2685
  %6 = call i32 @fchmod(i32 %4, i32 %5), !dbg !2686
  store i32 %6, i32* %3, align 4, !dbg !2687
  %7 = load i32, i32* %3, align 4, !dbg !2688
  %8 = icmp ne i32 %7, 0, !dbg !2688
  br i1 %8, label %9, label %10, !dbg !2691

9:                                                ; preds = %1
  call void @ioError() #7, !dbg !2688
  unreachable, !dbg !2688

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4, !dbg !2692
  %12 = load i16, i16* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 4), align 2, !dbg !2693
  %13 = load i16, i16* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 5), align 4, !dbg !2694
  %14 = call i32 @fchown(i32 %11, i16 zeroext %12, i16 zeroext %13), !dbg !2695
  ret void, !dbg !2696
}

; Function Attrs: noinline nounwind optnone
define internal void @uInt64_from_UInt32s(%struct.UInt64* %0, i32 %1, i32 %2) #0 !dbg !2697 {
  %4 = alloca %struct.UInt64*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.UInt64* %0, %struct.UInt64** %4, align 4
  call void @llvm.dbg.declare(metadata %struct.UInt64** %4, metadata !2701, metadata !DIExpression()), !dbg !2702
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2703, metadata !DIExpression()), !dbg !2704
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2705, metadata !DIExpression()), !dbg !2706
  %7 = load i32, i32* %6, align 4, !dbg !2707
  %8 = lshr i32 %7, 24, !dbg !2708
  %9 = and i32 %8, 255, !dbg !2709
  %10 = trunc i32 %9 to i8, !dbg !2710
  %11 = load %struct.UInt64*, %struct.UInt64** %4, align 4, !dbg !2711
  %12 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %11, i32 0, i32 0, !dbg !2712
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i32 0, i32 7, !dbg !2711
  store i8 %10, i8* %13, align 1, !dbg !2713
  %14 = load i32, i32* %6, align 4, !dbg !2714
  %15 = lshr i32 %14, 16, !dbg !2715
  %16 = and i32 %15, 255, !dbg !2716
  %17 = trunc i32 %16 to i8, !dbg !2717
  %18 = load %struct.UInt64*, %struct.UInt64** %4, align 4, !dbg !2718
  %19 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %18, i32 0, i32 0, !dbg !2719
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i32 0, i32 6, !dbg !2718
  store i8 %17, i8* %20, align 1, !dbg !2720
  %21 = load i32, i32* %6, align 4, !dbg !2721
  %22 = lshr i32 %21, 8, !dbg !2722
  %23 = and i32 %22, 255, !dbg !2723
  %24 = trunc i32 %23 to i8, !dbg !2724
  %25 = load %struct.UInt64*, %struct.UInt64** %4, align 4, !dbg !2725
  %26 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %25, i32 0, i32 0, !dbg !2726
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i32 0, i32 5, !dbg !2725
  store i8 %24, i8* %27, align 1, !dbg !2727
  %28 = load i32, i32* %6, align 4, !dbg !2728
  %29 = and i32 %28, 255, !dbg !2729
  %30 = trunc i32 %29 to i8, !dbg !2730
  %31 = load %struct.UInt64*, %struct.UInt64** %4, align 4, !dbg !2731
  %32 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %31, i32 0, i32 0, !dbg !2732
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %32, i32 0, i32 4, !dbg !2731
  store i8 %30, i8* %33, align 1, !dbg !2733
  %34 = load i32, i32* %5, align 4, !dbg !2734
  %35 = lshr i32 %34, 24, !dbg !2735
  %36 = and i32 %35, 255, !dbg !2736
  %37 = trunc i32 %36 to i8, !dbg !2737
  %38 = load %struct.UInt64*, %struct.UInt64** %4, align 4, !dbg !2738
  %39 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %38, i32 0, i32 0, !dbg !2739
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %39, i32 0, i32 3, !dbg !2738
  store i8 %37, i8* %40, align 1, !dbg !2740
  %41 = load i32, i32* %5, align 4, !dbg !2741
  %42 = lshr i32 %41, 16, !dbg !2742
  %43 = and i32 %42, 255, !dbg !2743
  %44 = trunc i32 %43 to i8, !dbg !2744
  %45 = load %struct.UInt64*, %struct.UInt64** %4, align 4, !dbg !2745
  %46 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %45, i32 0, i32 0, !dbg !2746
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %46, i32 0, i32 2, !dbg !2745
  store i8 %44, i8* %47, align 1, !dbg !2747
  %48 = load i32, i32* %5, align 4, !dbg !2748
  %49 = lshr i32 %48, 8, !dbg !2749
  %50 = and i32 %49, 255, !dbg !2750
  %51 = trunc i32 %50 to i8, !dbg !2751
  %52 = load %struct.UInt64*, %struct.UInt64** %4, align 4, !dbg !2752
  %53 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %52, i32 0, i32 0, !dbg !2753
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %53, i32 0, i32 1, !dbg !2752
  store i8 %51, i8* %54, align 1, !dbg !2754
  %55 = load i32, i32* %5, align 4, !dbg !2755
  %56 = and i32 %55, 255, !dbg !2756
  %57 = trunc i32 %56 to i8, !dbg !2757
  %58 = load %struct.UInt64*, %struct.UInt64** %4, align 4, !dbg !2758
  %59 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %58, i32 0, i32 0, !dbg !2759
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %59, i32 0, i32 0, !dbg !2758
  store i8 %57, i8* %60, align 1, !dbg !2760
  ret void, !dbg !2761
}

; Function Attrs: noinline nounwind optnone
define internal double @uInt64_to_double(%struct.UInt64* %0) #0 !dbg !2762 {
  %2 = alloca %struct.UInt64*, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.UInt64* %0, %struct.UInt64** %2, align 4
  call void @llvm.dbg.declare(metadata %struct.UInt64** %2, metadata !2765, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2767, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.declare(metadata double* %4, metadata !2769, metadata !DIExpression()), !dbg !2770
  store double 1.000000e+00, double* %4, align 8, !dbg !2770
  call void @llvm.dbg.declare(metadata double* %5, metadata !2771, metadata !DIExpression()), !dbg !2772
  store double 0.000000e+00, double* %5, align 8, !dbg !2772
  store i32 0, i32* %3, align 4, !dbg !2773
  br label %6, !dbg !2775

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %3, align 4, !dbg !2776
  %8 = icmp slt i32 %7, 8, !dbg !2778
  br i1 %8, label %9, label %25, !dbg !2779

9:                                                ; preds = %6
  %10 = load double, double* %4, align 8, !dbg !2780
  %11 = load %struct.UInt64*, %struct.UInt64** %2, align 4, !dbg !2782
  %12 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %11, i32 0, i32 0, !dbg !2783
  %13 = load i32, i32* %3, align 4, !dbg !2784
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i32 0, i32 %13, !dbg !2782
  %15 = load i8, i8* %14, align 1, !dbg !2782
  %16 = uitofp i8 %15 to double, !dbg !2785
  %17 = fmul double %10, %16, !dbg !2786
  %18 = load double, double* %5, align 8, !dbg !2787
  %19 = fadd double %18, %17, !dbg !2787
  store double %19, double* %5, align 8, !dbg !2787
  %20 = load double, double* %4, align 8, !dbg !2788
  %21 = fmul double %20, 2.560000e+02, !dbg !2788
  store double %21, double* %4, align 8, !dbg !2788
  br label %22, !dbg !2789

22:                                               ; preds = %9
  %23 = load i32, i32* %3, align 4, !dbg !2790
  %24 = add nsw i32 %23, 1, !dbg !2790
  store i32 %24, i32* %3, align 4, !dbg !2790
  br label %6, !dbg !2791, !llvm.loop !2792

25:                                               ; preds = %6
  %26 = load double, double* %5, align 8, !dbg !2794
  ret double %26, !dbg !2795
}

; Function Attrs: noinline nounwind optnone
define internal void @uInt64_toAscii(i8* %0, %struct.UInt64* %1) #0 !dbg !2796 {
  %3 = alloca i8*, align 4
  %4 = alloca %struct.UInt64*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.UInt64, align 1
  store i8* %0, i8** %3, align 4
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2799, metadata !DIExpression()), !dbg !2800
  store %struct.UInt64* %1, %struct.UInt64** %4, align 4
  call void @llvm.dbg.declare(metadata %struct.UInt64** %4, metadata !2801, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2803, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2805, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.declare(metadata [32 x i8]* %7, metadata !2807, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2810, metadata !DIExpression()), !dbg !2811
  store i32 0, i32* %8, align 4, !dbg !2811
  call void @llvm.dbg.declare(metadata %struct.UInt64* %9, metadata !2812, metadata !DIExpression()), !dbg !2813
  %10 = load %struct.UInt64*, %struct.UInt64** %4, align 4, !dbg !2814
  %11 = bitcast %struct.UInt64* %9 to i8*, !dbg !2815
  %12 = bitcast %struct.UInt64* %10 to i8*, !dbg !2815
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %11, i8* align 1 %12, i32 8, i1 false), !dbg !2815
  br label %13, !dbg !2816

13:                                               ; preds = %22, %2
  %14 = call i32 @uInt64_qrm10(%struct.UInt64* %9), !dbg !2817
  store i32 %14, i32* %6, align 4, !dbg !2819
  %15 = load i32, i32* %6, align 4, !dbg !2820
  %16 = add nsw i32 %15, 48, !dbg !2821
  %17 = trunc i32 %16 to i8, !dbg !2820
  %18 = load i32, i32* %8, align 4, !dbg !2822
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i32 0, i32 %18, !dbg !2823
  store i8 %17, i8* %19, align 1, !dbg !2824
  %20 = load i32, i32* %8, align 4, !dbg !2825
  %21 = add nsw i32 %20, 1, !dbg !2825
  store i32 %21, i32* %8, align 4, !dbg !2825
  br label %22, !dbg !2826

22:                                               ; preds = %13
  %23 = call zeroext i8 @uInt64_isZero(%struct.UInt64* %9), !dbg !2827
  %24 = icmp ne i8 %23, 0, !dbg !2828
  %25 = xor i1 %24, true, !dbg !2828
  br i1 %25, label %13, label %26, !dbg !2826, !llvm.loop !2829

26:                                               ; preds = %22
  %27 = load i8*, i8** %3, align 4, !dbg !2831
  %28 = load i32, i32* %8, align 4, !dbg !2832
  %29 = getelementptr inbounds i8, i8* %27, i32 %28, !dbg !2831
  store i8 0, i8* %29, align 1, !dbg !2833
  store i32 0, i32* %5, align 4, !dbg !2834
  br label %30, !dbg !2836

30:                                               ; preds = %44, %26
  %31 = load i32, i32* %5, align 4, !dbg !2837
  %32 = load i32, i32* %8, align 4, !dbg !2839
  %33 = icmp slt i32 %31, %32, !dbg !2840
  br i1 %33, label %34, label %47, !dbg !2841

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4, !dbg !2842
  %36 = load i32, i32* %5, align 4, !dbg !2843
  %37 = sub nsw i32 %35, %36, !dbg !2844
  %38 = sub nsw i32 %37, 1, !dbg !2845
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i32 0, i32 %38, !dbg !2846
  %40 = load i8, i8* %39, align 1, !dbg !2846
  %41 = load i8*, i8** %3, align 4, !dbg !2847
  %42 = load i32, i32* %5, align 4, !dbg !2848
  %43 = getelementptr inbounds i8, i8* %41, i32 %42, !dbg !2847
  store i8 %40, i8* %43, align 1, !dbg !2849
  br label %44, !dbg !2847

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4, !dbg !2850
  %46 = add nsw i32 %45, 1, !dbg !2850
  store i32 %46, i32* %5, align 4, !dbg !2850
  br label %30, !dbg !2851, !llvm.loop !2852

47:                                               ; preds = %30
  ret void, !dbg !2854
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noreturn nounwind optnone
define internal void @configError() #5 !dbg !2855 {
  %1 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !2856
  %2 = getelementptr inbounds %struct._reent, %struct._reent* %1, i32 0, i32 3, !dbg !2856
  %3 = load %struct.__sFILE*, %struct.__sFILE** %2, align 4, !dbg !2856
  %4 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.78, i32 0, i32 0)), !dbg !2857
  call void @setExit(i32 3), !dbg !2858
  %5 = load i32, i32* @exitValue, align 4, !dbg !2859
  call void @exit(i32 %5) #7, !dbg !2860
  unreachable, !dbg !2860
}

declare dso_local i32 @fgetc(%struct.__sFILE*) #2

declare dso_local i32 @ungetc(i32, %struct.__sFILE*) #2

declare dso_local i32 @fchmod(i32, i32) #2

declare dso_local i32 @fchown(i32, i16 zeroext, i16 zeroext) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: noinline nounwind optnone
define internal i32 @uInt64_qrm10(%struct.UInt64* %0) #0 !dbg !2861 {
  %2 = alloca %struct.UInt64*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.UInt64* %0, %struct.UInt64** %2, align 4
  call void @llvm.dbg.declare(metadata %struct.UInt64** %2, metadata !2864, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2866, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2868, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2870, metadata !DIExpression()), !dbg !2871
  store i32 0, i32* %3, align 4, !dbg !2872
  store i32 7, i32* %5, align 4, !dbg !2873
  br label %6, !dbg !2875

6:                                                ; preds = %28, %1
  %7 = load i32, i32* %5, align 4, !dbg !2876
  %8 = icmp sge i32 %7, 0, !dbg !2878
  br i1 %8, label %9, label %31, !dbg !2879

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4, !dbg !2880
  %11 = mul i32 %10, 256, !dbg !2882
  %12 = load %struct.UInt64*, %struct.UInt64** %2, align 4, !dbg !2883
  %13 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %12, i32 0, i32 0, !dbg !2884
  %14 = load i32, i32* %5, align 4, !dbg !2885
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i32 0, i32 %14, !dbg !2883
  %16 = load i8, i8* %15, align 1, !dbg !2883
  %17 = zext i8 %16 to i32, !dbg !2883
  %18 = add i32 %11, %17, !dbg !2886
  store i32 %18, i32* %4, align 4, !dbg !2887
  %19 = load i32, i32* %4, align 4, !dbg !2888
  %20 = udiv i32 %19, 10, !dbg !2889
  %21 = trunc i32 %20 to i8, !dbg !2888
  %22 = load %struct.UInt64*, %struct.UInt64** %2, align 4, !dbg !2890
  %23 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %22, i32 0, i32 0, !dbg !2891
  %24 = load i32, i32* %5, align 4, !dbg !2892
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i32 0, i32 %24, !dbg !2890
  store i8 %21, i8* %25, align 1, !dbg !2893
  %26 = load i32, i32* %4, align 4, !dbg !2894
  %27 = urem i32 %26, 10, !dbg !2895
  store i32 %27, i32* %3, align 4, !dbg !2896
  br label %28, !dbg !2897

28:                                               ; preds = %9
  %29 = load i32, i32* %5, align 4, !dbg !2898
  %30 = add nsw i32 %29, -1, !dbg !2898
  store i32 %30, i32* %5, align 4, !dbg !2898
  br label %6, !dbg !2899, !llvm.loop !2900

31:                                               ; preds = %6
  %32 = load i32, i32* %3, align 4, !dbg !2902
  ret i32 %32, !dbg !2903
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @uInt64_isZero(%struct.UInt64* %0) #0 !dbg !2904 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.UInt64*, align 4
  %4 = alloca i32, align 4
  store %struct.UInt64* %0, %struct.UInt64** %3, align 4
  call void @llvm.dbg.declare(metadata %struct.UInt64** %3, metadata !2907, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2909, metadata !DIExpression()), !dbg !2910
  store i32 0, i32* %4, align 4, !dbg !2911
  br label %5, !dbg !2913

5:                                                ; preds = %18, %1
  %6 = load i32, i32* %4, align 4, !dbg !2914
  %7 = icmp slt i32 %6, 8, !dbg !2916
  br i1 %7, label %8, label %21, !dbg !2917

8:                                                ; preds = %5
  %9 = load %struct.UInt64*, %struct.UInt64** %3, align 4, !dbg !2918
  %10 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %9, i32 0, i32 0, !dbg !2920
  %11 = load i32, i32* %4, align 4, !dbg !2921
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i32 0, i32 %11, !dbg !2918
  %13 = load i8, i8* %12, align 1, !dbg !2918
  %14 = zext i8 %13 to i32, !dbg !2918
  %15 = icmp ne i32 %14, 0, !dbg !2922
  br i1 %15, label %16, label %17, !dbg !2923

16:                                               ; preds = %8
  store i8 0, i8* %2, align 1, !dbg !2924
  br label %22, !dbg !2924

17:                                               ; preds = %8
  br label %18, !dbg !2925

18:                                               ; preds = %17
  %19 = load i32, i32* %4, align 4, !dbg !2926
  %20 = add nsw i32 %19, 1, !dbg !2926
  store i32 %20, i32* %4, align 4, !dbg !2926
  br label %5, !dbg !2927, !llvm.loop !2928

21:                                               ; preds = %5
  store i8 1, i8* %2, align 1, !dbg !2930
  br label %22, !dbg !2930

22:                                               ; preds = %21, %16
  %23 = load i8, i8* %2, align 1, !dbg !2931
  ret i8 %23, !dbg !2931
}

declare dso_local i32 @utime(...) #2

declare dso_local void @perror(i8*) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @mapSuffix(i8* %0, i8* %1, i8* %2) #0 !dbg !2932 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i8*, align 4
  store i8* %0, i8** %5, align 4
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2935, metadata !DIExpression()), !dbg !2936
  store i8* %1, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2937, metadata !DIExpression()), !dbg !2938
  store i8* %2, i8** %7, align 4
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2939, metadata !DIExpression()), !dbg !2940
  %8 = load i8*, i8** %5, align 4, !dbg !2941
  %9 = load i8*, i8** %6, align 4, !dbg !2943
  %10 = call zeroext i8 @hasSuffix(i8* %8, i8* %9), !dbg !2944
  %11 = icmp ne i8 %10, 0, !dbg !2944
  br i1 %11, label %13, label %12, !dbg !2945

12:                                               ; preds = %3
  store i8 0, i8* %4, align 1, !dbg !2946
  br label %24, !dbg !2946

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 4, !dbg !2947
  %15 = load i8*, i8** %5, align 4, !dbg !2948
  %16 = call i32 @strlen(i8* %15), !dbg !2949
  %17 = load i8*, i8** %6, align 4, !dbg !2950
  %18 = call i32 @strlen(i8* %17), !dbg !2951
  %19 = sub i32 %16, %18, !dbg !2952
  %20 = getelementptr inbounds i8, i8* %14, i32 %19, !dbg !2947
  store i8 0, i8* %20, align 1, !dbg !2953
  %21 = load i8*, i8** %5, align 4, !dbg !2954
  %22 = load i8*, i8** %7, align 4, !dbg !2955
  %23 = call i8* @strcat(i8* %21, i8* %22), !dbg !2956
  store i8 1, i8* %4, align 1, !dbg !2957
  br label %24, !dbg !2957

24:                                               ; preds = %13, %12
  %25 = load i8, i8* %4, align 1, !dbg !2958
  ret i8 %25, !dbg !2958
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @uncompressStream(%struct.__sFILE* %0, %struct.__sFILE* %1) #0 !dbg !2959 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.__sFILE*, align 4
  %5 = alloca %struct.__sFILE*, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [5000 x i8], align 1
  %14 = alloca [5000 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 4
  %17 = alloca i8*, align 4
  %18 = alloca i32, align 4
  store %struct.__sFILE* %0, %struct.__sFILE** %4, align 4
  call void @llvm.dbg.declare(metadata %struct.__sFILE** %4, metadata !2962, metadata !DIExpression()), !dbg !2963
  store %struct.__sFILE* %1, %struct.__sFILE** %5, align 4
  call void @llvm.dbg.declare(metadata %struct.__sFILE** %5, metadata !2964, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2966, metadata !DIExpression()), !dbg !2967
  store i8* null, i8** %6, align 4, !dbg !2967
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2968, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2970, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2972, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2974, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2976, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2978, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.declare(metadata [5000 x i8]* %13, metadata !2980, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.declare(metadata [5000 x i8]* %14, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2984, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.declare(metadata i8** %16, metadata !2986, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.declare(metadata i8** %17, metadata !2988, metadata !DIExpression()), !dbg !2989
  store i32 0, i32* %15, align 4, !dbg !2990
  store i32 0, i32* %11, align 4, !dbg !2991
  %19 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !2992
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %19, i32 0, i32 3, !dbg !2992
  %21 = load i16, i16* %20, align 4, !dbg !2992
  %22 = sext i16 %21 to i32, !dbg !2992
  %23 = and i32 %22, 64, !dbg !2992
  %24 = icmp ne i32 %23, 0, !dbg !2992
  br i1 %24, label %25, label %26, !dbg !2994

25:                                               ; preds = %2
  br label %235, !dbg !2995

26:                                               ; preds = %2
  %27 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !2996
  %28 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %27, i32 0, i32 3, !dbg !2996
  %29 = load i16, i16* %28, align 4, !dbg !2996
  %30 = sext i16 %29 to i32, !dbg !2996
  %31 = and i32 %30, 64, !dbg !2996
  %32 = icmp ne i32 %31, 0, !dbg !2996
  br i1 %32, label %33, label %34, !dbg !2998

33:                                               ; preds = %26
  br label %235, !dbg !2999

34:                                               ; preds = %26
  br label %35, !dbg !3000

35:                                               ; preds = %34, %124
  %36 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !3001
  %37 = load i32, i32* @verbosity, align 4, !dbg !3003
  %38 = load i8, i8* @smallMode, align 1, !dbg !3004
  %39 = zext i8 %38 to i32, !dbg !3005
  %40 = getelementptr inbounds [5000 x i8], [5000 x i8]* %14, i32 0, i32 0, !dbg !3006
  %41 = load i32, i32* %15, align 4, !dbg !3007
  %42 = call i8* @BZ2_bzReadOpen(i32* %7, %struct.__sFILE* %36, i32 %37, i32 %39, i8* %40, i32 %41), !dbg !3008
  store i8* %42, i8** %6, align 4, !dbg !3009
  %43 = load i8*, i8** %6, align 4, !dbg !3010
  %44 = icmp eq i8* %43, null, !dbg !3012
  br i1 %44, label %48, label %45, !dbg !3013

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4, !dbg !3014
  %47 = icmp ne i32 %46, 0, !dbg !3015
  br i1 %47, label %48, label %49, !dbg !3016

48:                                               ; preds = %45, %35
  br label %230, !dbg !3017

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4, !dbg !3018
  %51 = add nsw i32 %50, 1, !dbg !3018
  store i32 %51, i32* %11, align 4, !dbg !3018
  br label %52, !dbg !3019

52:                                               ; preds = %84, %49
  %53 = load i32, i32* %7, align 4, !dbg !3020
  %54 = icmp eq i32 %53, 0, !dbg !3021
  br i1 %54, label %55, label %85, !dbg !3019

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 4, !dbg !3022
  %57 = getelementptr inbounds [5000 x i8], [5000 x i8]* %13, i32 0, i32 0, !dbg !3024
  %58 = call i32 @BZ2_bzRead(i32* %7, i8* %56, i8* %57, i32 5000), !dbg !3025
  store i32 %58, i32* %10, align 4, !dbg !3026
  %59 = load i32, i32* %7, align 4, !dbg !3027
  %60 = icmp eq i32 %59, -5, !dbg !3029
  br i1 %60, label %61, label %62, !dbg !3030

61:                                               ; preds = %55
  br label %190, !dbg !3031

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4, !dbg !3032
  %64 = icmp eq i32 %63, 0, !dbg !3034
  br i1 %64, label %68, label %65, !dbg !3035

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4, !dbg !3036
  %67 = icmp eq i32 %66, 4, !dbg !3037
  br i1 %67, label %68, label %76, !dbg !3038

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %10, align 4, !dbg !3039
  %70 = icmp sgt i32 %69, 0, !dbg !3040
  br i1 %70, label %71, label %76, !dbg !3041

71:                                               ; preds = %68
  %72 = getelementptr inbounds [5000 x i8], [5000 x i8]* %13, i32 0, i32 0, !dbg !3042
  %73 = load i32, i32* %10, align 4, !dbg !3043
  %74 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !3044
  %75 = call i32 @fwrite(i8* %72, i32 1, i32 %73, %struct.__sFILE* %74), !dbg !3045
  br label %76, !dbg !3045

76:                                               ; preds = %71, %68, %65
  %77 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !3046
  %78 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %77, i32 0, i32 3, !dbg !3046
  %79 = load i16, i16* %78, align 4, !dbg !3046
  %80 = sext i16 %79 to i32, !dbg !3046
  %81 = and i32 %80, 64, !dbg !3046
  %82 = icmp ne i32 %81, 0, !dbg !3046
  br i1 %82, label %83, label %84, !dbg !3048

83:                                               ; preds = %76
  br label %235, !dbg !3049

84:                                               ; preds = %76
  br label %52, !dbg !3019, !llvm.loop !3050

85:                                               ; preds = %52
  %86 = load i32, i32* %7, align 4, !dbg !3052
  %87 = icmp ne i32 %86, 4, !dbg !3054
  br i1 %87, label %88, label %89, !dbg !3055

88:                                               ; preds = %85
  br label %230, !dbg !3056

89:                                               ; preds = %85
  %90 = load i8*, i8** %6, align 4, !dbg !3057
  call void @BZ2_bzReadGetUnused(i32* %7, i8* %90, i8** %16, i32* %15), !dbg !3058
  %91 = load i32, i32* %7, align 4, !dbg !3059
  %92 = icmp ne i32 %91, 0, !dbg !3061
  br i1 %92, label %93, label %94, !dbg !3062

93:                                               ; preds = %89
  call void @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.89, i32 0, i32 0)) #7, !dbg !3063
  unreachable, !dbg !3063

94:                                               ; preds = %89
  %95 = load i8*, i8** %16, align 4, !dbg !3064
  store i8* %95, i8** %17, align 4, !dbg !3065
  store i32 0, i32* %12, align 4, !dbg !3066
  br label %96, !dbg !3068

96:                                               ; preds = %107, %94
  %97 = load i32, i32* %12, align 4, !dbg !3069
  %98 = load i32, i32* %15, align 4, !dbg !3071
  %99 = icmp slt i32 %97, %98, !dbg !3072
  br i1 %99, label %100, label %110, !dbg !3073

100:                                              ; preds = %96
  %101 = load i8*, i8** %17, align 4, !dbg !3074
  %102 = load i32, i32* %12, align 4, !dbg !3075
  %103 = getelementptr inbounds i8, i8* %101, i32 %102, !dbg !3074
  %104 = load i8, i8* %103, align 1, !dbg !3074
  %105 = load i32, i32* %12, align 4, !dbg !3076
  %106 = getelementptr inbounds [5000 x i8], [5000 x i8]* %14, i32 0, i32 %105, !dbg !3077
  store i8 %104, i8* %106, align 1, !dbg !3078
  br label %107, !dbg !3077

107:                                              ; preds = %100
  %108 = load i32, i32* %12, align 4, !dbg !3079
  %109 = add nsw i32 %108, 1, !dbg !3079
  store i32 %109, i32* %12, align 4, !dbg !3079
  br label %96, !dbg !3080, !llvm.loop !3081

110:                                              ; preds = %96
  %111 = load i8*, i8** %6, align 4, !dbg !3083
  call void @BZ2_bzReadClose(i32* %7, i8* %111), !dbg !3084
  %112 = load i32, i32* %7, align 4, !dbg !3085
  %113 = icmp ne i32 %112, 0, !dbg !3087
  br i1 %113, label %114, label %115, !dbg !3088

114:                                              ; preds = %110
  call void @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.89, i32 0, i32 0)) #7, !dbg !3089
  unreachable, !dbg !3089

115:                                              ; preds = %110
  %116 = load i32, i32* %15, align 4, !dbg !3090
  %117 = icmp eq i32 %116, 0, !dbg !3092
  br i1 %117, label %118, label %124, !dbg !3093

118:                                              ; preds = %115
  %119 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !3094
  %120 = call zeroext i8 @myfeof(%struct.__sFILE* %119), !dbg !3095
  %121 = zext i8 %120 to i32, !dbg !3095
  %122 = icmp ne i32 %121, 0, !dbg !3095
  br i1 %122, label %123, label %124, !dbg !3096

123:                                              ; preds = %118
  br label %125, !dbg !3097

124:                                              ; preds = %118, %115
  br label %35, !dbg !3000, !llvm.loop !3098

125:                                              ; preds = %123
  br label %126, !dbg !3000

126:                                              ; preds = %228, %125
  call void @llvm.dbg.label(metadata !3100), !dbg !3101
  %127 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !3102
  %128 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %127, i32 0, i32 3, !dbg !3102
  %129 = load i16, i16* %128, align 4, !dbg !3102
  %130 = sext i16 %129 to i32, !dbg !3102
  %131 = and i32 %130, 64, !dbg !3102
  %132 = icmp ne i32 %131, 0, !dbg !3102
  br i1 %132, label %133, label %134, !dbg !3104

133:                                              ; preds = %126
  br label %235, !dbg !3105

134:                                              ; preds = %126
  %135 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !3106
  %136 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3108
  %137 = getelementptr inbounds %struct._reent, %struct._reent* %136, i32 0, i32 2, !dbg !3108
  %138 = load %struct.__sFILE*, %struct.__sFILE** %137, align 8, !dbg !3108
  %139 = icmp ne %struct.__sFILE* %135, %138, !dbg !3109
  br i1 %139, label %140, label %148, !dbg !3110

140:                                              ; preds = %134
  call void @llvm.dbg.declare(metadata i32* %18, metadata !3111, metadata !DIExpression()), !dbg !3113
  %141 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !3114
  %142 = call i32 @fileno(%struct.__sFILE* %141), !dbg !3115
  store i32 %142, i32* %18, align 4, !dbg !3113
  %143 = load i32, i32* %18, align 4, !dbg !3116
  %144 = icmp slt i32 %143, 0, !dbg !3118
  br i1 %144, label %145, label %146, !dbg !3119

145:                                              ; preds = %140
  br label %235, !dbg !3120

146:                                              ; preds = %140
  %147 = load i32, i32* %18, align 4, !dbg !3121
  call void @applySavedFileAttrToOutputFile(i32 %147), !dbg !3122
  br label %148, !dbg !3123

148:                                              ; preds = %146, %134
  %149 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !3124
  %150 = call i32 @fclose(%struct.__sFILE* %149), !dbg !3125
  store i32 %150, i32* %9, align 4, !dbg !3126
  %151 = load i32, i32* %9, align 4, !dbg !3127
  %152 = icmp eq i32 %151, -1, !dbg !3129
  br i1 %152, label %153, label %154, !dbg !3130

153:                                              ; preds = %148
  br label %235, !dbg !3131

154:                                              ; preds = %148
  %155 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !3132
  %156 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %155, i32 0, i32 3, !dbg !3132
  %157 = load i16, i16* %156, align 4, !dbg !3132
  %158 = sext i16 %157 to i32, !dbg !3132
  %159 = and i32 %158, 64, !dbg !3132
  %160 = icmp ne i32 %159, 0, !dbg !3132
  br i1 %160, label %161, label %162, !dbg !3134

161:                                              ; preds = %154
  br label %235, !dbg !3135

162:                                              ; preds = %154
  %163 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !3136
  %164 = call i32 @fflush(%struct.__sFILE* %163), !dbg !3137
  store i32 %164, i32* %9, align 4, !dbg !3138
  %165 = load i32, i32* %9, align 4, !dbg !3139
  %166 = icmp ne i32 %165, 0, !dbg !3141
  br i1 %166, label %167, label %168, !dbg !3142

167:                                              ; preds = %162
  br label %235, !dbg !3143

168:                                              ; preds = %162
  %169 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !3144
  %170 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3146
  %171 = getelementptr inbounds %struct._reent, %struct._reent* %170, i32 0, i32 2, !dbg !3146
  %172 = load %struct.__sFILE*, %struct.__sFILE** %171, align 8, !dbg !3146
  %173 = icmp ne %struct.__sFILE* %169, %172, !dbg !3147
  br i1 %173, label %174, label %181, !dbg !3148

174:                                              ; preds = %168
  %175 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !3149
  %176 = call i32 @fclose(%struct.__sFILE* %175), !dbg !3151
  store i32 %176, i32* %9, align 4, !dbg !3152
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !3153
  %177 = load i32, i32* %9, align 4, !dbg !3154
  %178 = icmp eq i32 %177, -1, !dbg !3156
  br i1 %178, label %179, label %180, !dbg !3157

179:                                              ; preds = %174
  br label %235, !dbg !3158

180:                                              ; preds = %174
  br label %181, !dbg !3159

181:                                              ; preds = %180, %168
  store %struct.__sFILE* null, %struct.__sFILE** @outputHandleJustInCase, align 4, !dbg !3160
  %182 = load i32, i32* @verbosity, align 4, !dbg !3161
  %183 = icmp sge i32 %182, 2, !dbg !3163
  br i1 %183, label %184, label %189, !dbg !3164

184:                                              ; preds = %181
  %185 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3165
  %186 = getelementptr inbounds %struct._reent, %struct._reent* %185, i32 0, i32 3, !dbg !3165
  %187 = load %struct.__sFILE*, %struct.__sFILE** %186, align 4, !dbg !3165
  %188 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0)), !dbg !3166
  br label %189, !dbg !3166

189:                                              ; preds = %184, %181
  store i8 1, i8* %3, align 1, !dbg !3167
  br label %272, !dbg !3167

190:                                              ; preds = %61
  call void @llvm.dbg.label(metadata !3168), !dbg !3169
  %191 = load i8, i8* @forceOverwrite, align 1, !dbg !3170
  %192 = icmp ne i8 %191, 0, !dbg !3170
  br i1 %192, label %193, label %229, !dbg !3172

193:                                              ; preds = %190
  %194 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !3173
  call void @rewind(%struct.__sFILE* %194), !dbg !3175
  br label %195, !dbg !3176

195:                                              ; preds = %193, %227
  %196 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !3177
  %197 = call zeroext i8 @myfeof(%struct.__sFILE* %196), !dbg !3180
  %198 = icmp ne i8 %197, 0, !dbg !3180
  br i1 %198, label %199, label %200, !dbg !3181

199:                                              ; preds = %195
  br label %228, !dbg !3182

200:                                              ; preds = %195
  %201 = getelementptr inbounds [5000 x i8], [5000 x i8]* %13, i32 0, i32 0, !dbg !3183
  %202 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !3184
  %203 = call i32 @fread(i8* %201, i32 1, i32 5000, %struct.__sFILE* %202), !dbg !3185
  store i32 %203, i32* %10, align 4, !dbg !3186
  %204 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !3187
  %205 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %204, i32 0, i32 3, !dbg !3187
  %206 = load i16, i16* %205, align 4, !dbg !3187
  %207 = sext i16 %206 to i32, !dbg !3187
  %208 = and i32 %207, 64, !dbg !3187
  %209 = icmp ne i32 %208, 0, !dbg !3187
  br i1 %209, label %210, label %211, !dbg !3189

210:                                              ; preds = %200
  br label %235, !dbg !3190

211:                                              ; preds = %200
  %212 = load i32, i32* %10, align 4, !dbg !3191
  %213 = icmp sgt i32 %212, 0, !dbg !3193
  br i1 %213, label %214, label %219, !dbg !3194

214:                                              ; preds = %211
  %215 = getelementptr inbounds [5000 x i8], [5000 x i8]* %13, i32 0, i32 0, !dbg !3195
  %216 = load i32, i32* %10, align 4, !dbg !3196
  %217 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !3197
  %218 = call i32 @fwrite(i8* %215, i32 1, i32 %216, %struct.__sFILE* %217), !dbg !3198
  br label %219, !dbg !3198

219:                                              ; preds = %214, %211
  %220 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !3199
  %221 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %220, i32 0, i32 3, !dbg !3199
  %222 = load i16, i16* %221, align 4, !dbg !3199
  %223 = sext i16 %222 to i32, !dbg !3199
  %224 = and i32 %223, 64, !dbg !3199
  %225 = icmp ne i32 %224, 0, !dbg !3199
  br i1 %225, label %226, label %227, !dbg !3201

226:                                              ; preds = %219
  br label %235, !dbg !3202

227:                                              ; preds = %219
  br label %195, !dbg !3176, !llvm.loop !3203

228:                                              ; preds = %199
  br label %126, !dbg !3205

229:                                              ; preds = %190
  br label %230, !dbg !3170

230:                                              ; preds = %229, %88, %48
  call void @llvm.dbg.label(metadata !3206), !dbg !3207
  %231 = load i8*, i8** %6, align 4, !dbg !3208
  call void @BZ2_bzReadClose(i32* %8, i8* %231), !dbg !3209
  %232 = load i32, i32* %7, align 4, !dbg !3210
  switch i32 %232, label %271 [
    i32 -9, label %233
    i32 -6, label %234
    i32 -4, label %236
    i32 -3, label %237
    i32 -7, label %238
    i32 -5, label %239
  ], !dbg !3211

233:                                              ; preds = %230
  call void @configError() #7, !dbg !3212
  unreachable, !dbg !3212

234:                                              ; preds = %230
  br label %235, !dbg !3212

235:                                              ; preds = %234, %226, %210, %179, %167, %161, %153, %145, %133, %83, %33, %25
  call void @llvm.dbg.label(metadata !3214), !dbg !3215
  call void @ioError() #7, !dbg !3216
  unreachable, !dbg !3216

236:                                              ; preds = %230
  call void @crcError() #7, !dbg !3217
  unreachable, !dbg !3217

237:                                              ; preds = %230
  call void @outOfMemory() #7, !dbg !3218
  unreachable, !dbg !3218

238:                                              ; preds = %230
  call void @compressedStreamEOF() #7, !dbg !3219
  unreachable, !dbg !3219

239:                                              ; preds = %230
  %240 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !3220
  %241 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3222
  %242 = getelementptr inbounds %struct._reent, %struct._reent* %241, i32 0, i32 1, !dbg !3222
  %243 = load %struct.__sFILE*, %struct.__sFILE** %242, align 4, !dbg !3222
  %244 = icmp ne %struct.__sFILE* %240, %243, !dbg !3223
  br i1 %244, label %245, label %248, !dbg !3224

245:                                              ; preds = %239
  %246 = load %struct.__sFILE*, %struct.__sFILE** %4, align 4, !dbg !3225
  %247 = call i32 @fclose(%struct.__sFILE* %246), !dbg !3226
  br label %248, !dbg !3226

248:                                              ; preds = %245, %239
  %249 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !3227
  %250 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3229
  %251 = getelementptr inbounds %struct._reent, %struct._reent* %250, i32 0, i32 2, !dbg !3229
  %252 = load %struct.__sFILE*, %struct.__sFILE** %251, align 8, !dbg !3229
  %253 = icmp ne %struct.__sFILE* %249, %252, !dbg !3230
  br i1 %253, label %254, label %257, !dbg !3231

254:                                              ; preds = %248
  %255 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !3232
  %256 = call i32 @fclose(%struct.__sFILE* %255), !dbg !3233
  br label %257, !dbg !3233

257:                                              ; preds = %254, %248
  %258 = load i32, i32* %11, align 4, !dbg !3234
  %259 = icmp eq i32 %258, 1, !dbg !3236
  br i1 %259, label %260, label %261, !dbg !3237

260:                                              ; preds = %257
  store i8 0, i8* %3, align 1, !dbg !3238
  br label %272, !dbg !3238

261:                                              ; preds = %257
  %262 = load i8, i8* @noisy, align 1, !dbg !3240
  %263 = icmp ne i8 %262, 0, !dbg !3240
  br i1 %263, label %264, label %270, !dbg !3243

264:                                              ; preds = %261
  %265 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3244
  %266 = getelementptr inbounds %struct._reent, %struct._reent* %265, i32 0, i32 3, !dbg !3244
  %267 = load %struct.__sFILE*, %struct.__sFILE** %266, align 4, !dbg !3244
  %268 = load i8*, i8** @progName, align 4, !dbg !3245
  %269 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %267, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.91, i32 0, i32 0), i8* %268, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !3246
  br label %270, !dbg !3246

270:                                              ; preds = %264, %261
  store i8 1, i8* %3, align 1, !dbg !3247
  br label %272, !dbg !3247

271:                                              ; preds = %230
  call void @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.92, i32 0, i32 0)) #7, !dbg !3248
  unreachable, !dbg !3248

272:                                              ; preds = %270, %260, %189
  %273 = load i8, i8* %3, align 1, !dbg !3249
  ret i8 %273, !dbg !3249
}

declare dso_local i8* @BZ2_bzReadOpen(i32*, %struct.__sFILE*, i32, i32, i8*, i32) #2

declare dso_local i32 @BZ2_bzRead(i32*, i8*, i8*, i32) #2

declare dso_local i32 @fwrite(i8*, i32, i32, %struct.__sFILE*) #2

declare dso_local void @BZ2_bzReadGetUnused(i32*, i8*, i8**, i32*) #2

declare dso_local void @BZ2_bzReadClose(i32*, i8*) #2

declare dso_local void @rewind(%struct.__sFILE*) #2

; Function Attrs: noinline noreturn nounwind optnone
define internal void @crcError() #5 !dbg !3250 {
  %1 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3251
  %2 = getelementptr inbounds %struct._reent, %struct._reent* %1, i32 0, i32 3, !dbg !3251
  %3 = load %struct.__sFILE*, %struct.__sFILE** %2, align 4, !dbg !3251
  %4 = load i8*, i8** @progName, align 4, !dbg !3252
  %5 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.93, i32 0, i32 0), i8* %4), !dbg !3253
  call void @showFileNames(), !dbg !3254
  call void @cadvise(), !dbg !3255
  call void @cleanUpAndFail(i32 2) #7, !dbg !3256
  unreachable, !dbg !3256
}

; Function Attrs: noinline noreturn nounwind optnone
define internal void @compressedStreamEOF() #5 !dbg !3257 {
  %1 = load i8, i8* @noisy, align 1, !dbg !3258
  %2 = icmp ne i8 %1, 0, !dbg !3258
  br i1 %2, label %3, label %10, !dbg !3260

3:                                                ; preds = %0
  %4 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3261
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i32 0, i32 3, !dbg !3261
  %6 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !3261
  %7 = load i8*, i8** @progName, align 4, !dbg !3263
  %8 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.95, i32 0, i32 0), i8* %7), !dbg !3264
  %9 = load i8*, i8** @progName, align 4, !dbg !3265
  call void @perror(i8* %9), !dbg !3266
  call void @showFileNames(), !dbg !3267
  call void @cadvise(), !dbg !3268
  br label %10, !dbg !3269

10:                                               ; preds = %3, %0
  call void @cleanUpAndFail(i32 2) #7, !dbg !3270
  unreachable, !dbg !3270
}

; Function Attrs: noinline nounwind optnone
define internal void @cadvise() #0 !dbg !3271 {
  %1 = load i8, i8* @noisy, align 1, !dbg !3272
  %2 = icmp ne i8 %1, 0, !dbg !3272
  br i1 %2, label %3, label %8, !dbg !3274

3:                                                ; preds = %0
  %4 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3275
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i32 0, i32 3, !dbg !3275
  %6 = load %struct.__sFILE*, %struct.__sFILE** %5, align 4, !dbg !3275
  %7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %6, i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.94, i32 0, i32 0)), !dbg !3276
  br label %8, !dbg !3276

8:                                                ; preds = %3, %0
  ret void, !dbg !3277
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @testStream(%struct.__sFILE* %0) #0 !dbg !3278 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.__sFILE*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [5000 x i8], align 1
  %11 = alloca [5000 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 4
  %14 = alloca i8*, align 4
  store %struct.__sFILE* %0, %struct.__sFILE** %3, align 4
  call void @llvm.dbg.declare(metadata %struct.__sFILE** %3, metadata !3279, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3281, metadata !DIExpression()), !dbg !3282
  store i8* null, i8** %4, align 4, !dbg !3282
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3283, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3285, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3287, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3289, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3291, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.declare(metadata [5000 x i8]* %10, metadata !3293, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.declare(metadata [5000 x i8]* %11, metadata !3295, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3297, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3299, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.declare(metadata i8** %14, metadata !3301, metadata !DIExpression()), !dbg !3302
  store i32 0, i32* %12, align 4, !dbg !3303
  store i32 0, i32* %8, align 4, !dbg !3304
  %15 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !3305
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i32 0, i32 3, !dbg !3305
  %17 = load i16, i16* %16, align 4, !dbg !3305
  %18 = sext i16 %17 to i32, !dbg !3305
  %19 = and i32 %18, 64, !dbg !3305
  %20 = icmp ne i32 %19, 0, !dbg !3305
  br i1 %20, label %21, label %22, !dbg !3307

21:                                               ; preds = %1
  br label %128, !dbg !3308

22:                                               ; preds = %1
  br label %23, !dbg !3309

23:                                               ; preds = %22, %90
  %24 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !3310
  %25 = load i32, i32* @verbosity, align 4, !dbg !3312
  %26 = load i8, i8* @smallMode, align 1, !dbg !3313
  %27 = zext i8 %26 to i32, !dbg !3314
  %28 = getelementptr inbounds [5000 x i8], [5000 x i8]* %11, i32 0, i32 0, !dbg !3315
  %29 = load i32, i32* %12, align 4, !dbg !3316
  %30 = call i8* @BZ2_bzReadOpen(i32* %5, %struct.__sFILE* %24, i32 %25, i32 %27, i8* %28, i32 %29), !dbg !3317
  store i8* %30, i8** %4, align 4, !dbg !3318
  %31 = load i8*, i8** %4, align 4, !dbg !3319
  %32 = icmp eq i8* %31, null, !dbg !3321
  br i1 %32, label %36, label %33, !dbg !3322

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4, !dbg !3323
  %35 = icmp ne i32 %34, 0, !dbg !3324
  br i1 %35, label %36, label %37, !dbg !3325

36:                                               ; preds = %33, %23
  br label %114, !dbg !3326

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4, !dbg !3327
  %39 = add nsw i32 %38, 1, !dbg !3327
  store i32 %39, i32* %8, align 4, !dbg !3327
  br label %40, !dbg !3328

40:                                               ; preds = %50, %37
  %41 = load i32, i32* %5, align 4, !dbg !3329
  %42 = icmp eq i32 %41, 0, !dbg !3330
  br i1 %42, label %43, label %51, !dbg !3328

43:                                               ; preds = %40
  %44 = load i8*, i8** %4, align 4, !dbg !3331
  %45 = getelementptr inbounds [5000 x i8], [5000 x i8]* %10, i32 0, i32 0, !dbg !3333
  %46 = call i32 @BZ2_bzRead(i32* %5, i8* %44, i8* %45, i32 5000), !dbg !3334
  %47 = load i32, i32* %5, align 4, !dbg !3335
  %48 = icmp eq i32 %47, -5, !dbg !3337
  br i1 %48, label %49, label %50, !dbg !3338

49:                                               ; preds = %43
  br label %114, !dbg !3339

50:                                               ; preds = %43
  br label %40, !dbg !3328, !llvm.loop !3340

51:                                               ; preds = %40
  %52 = load i32, i32* %5, align 4, !dbg !3342
  %53 = icmp ne i32 %52, 4, !dbg !3344
  br i1 %53, label %54, label %55, !dbg !3345

54:                                               ; preds = %51
  br label %114, !dbg !3346

55:                                               ; preds = %51
  %56 = load i8*, i8** %4, align 4, !dbg !3347
  call void @BZ2_bzReadGetUnused(i32* %5, i8* %56, i8** %13, i32* %12), !dbg !3348
  %57 = load i32, i32* %5, align 4, !dbg !3349
  %58 = icmp ne i32 %57, 0, !dbg !3351
  br i1 %58, label %59, label %60, !dbg !3352

59:                                               ; preds = %55
  call void @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.100, i32 0, i32 0)) #7, !dbg !3353
  unreachable, !dbg !3353

60:                                               ; preds = %55
  %61 = load i8*, i8** %13, align 4, !dbg !3354
  store i8* %61, i8** %14, align 4, !dbg !3355
  store i32 0, i32* %9, align 4, !dbg !3356
  br label %62, !dbg !3358

62:                                               ; preds = %73, %60
  %63 = load i32, i32* %9, align 4, !dbg !3359
  %64 = load i32, i32* %12, align 4, !dbg !3361
  %65 = icmp slt i32 %63, %64, !dbg !3362
  br i1 %65, label %66, label %76, !dbg !3363

66:                                               ; preds = %62
  %67 = load i8*, i8** %14, align 4, !dbg !3364
  %68 = load i32, i32* %9, align 4, !dbg !3365
  %69 = getelementptr inbounds i8, i8* %67, i32 %68, !dbg !3364
  %70 = load i8, i8* %69, align 1, !dbg !3364
  %71 = load i32, i32* %9, align 4, !dbg !3366
  %72 = getelementptr inbounds [5000 x i8], [5000 x i8]* %11, i32 0, i32 %71, !dbg !3367
  store i8 %70, i8* %72, align 1, !dbg !3368
  br label %73, !dbg !3367

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4, !dbg !3369
  %75 = add nsw i32 %74, 1, !dbg !3369
  store i32 %75, i32* %9, align 4, !dbg !3369
  br label %62, !dbg !3370, !llvm.loop !3371

76:                                               ; preds = %62
  %77 = load i8*, i8** %4, align 4, !dbg !3373
  call void @BZ2_bzReadClose(i32* %5, i8* %77), !dbg !3374
  %78 = load i32, i32* %5, align 4, !dbg !3375
  %79 = icmp ne i32 %78, 0, !dbg !3377
  br i1 %79, label %80, label %81, !dbg !3378

80:                                               ; preds = %76
  call void @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.100, i32 0, i32 0)) #7, !dbg !3379
  unreachable, !dbg !3379

81:                                               ; preds = %76
  %82 = load i32, i32* %12, align 4, !dbg !3380
  %83 = icmp eq i32 %82, 0, !dbg !3382
  br i1 %83, label %84, label %90, !dbg !3383

84:                                               ; preds = %81
  %85 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !3384
  %86 = call zeroext i8 @myfeof(%struct.__sFILE* %85), !dbg !3385
  %87 = zext i8 %86 to i32, !dbg !3385
  %88 = icmp ne i32 %87, 0, !dbg !3385
  br i1 %88, label %89, label %90, !dbg !3386

89:                                               ; preds = %84
  br label %91, !dbg !3387

90:                                               ; preds = %84, %81
  br label %23, !dbg !3309, !llvm.loop !3388

91:                                               ; preds = %89
  %92 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !3390
  %93 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %92, i32 0, i32 3, !dbg !3390
  %94 = load i16, i16* %93, align 4, !dbg !3390
  %95 = sext i16 %94 to i32, !dbg !3390
  %96 = and i32 %95, 64, !dbg !3390
  %97 = icmp ne i32 %96, 0, !dbg !3390
  br i1 %97, label %98, label %99, !dbg !3392

98:                                               ; preds = %91
  br label %128, !dbg !3393

99:                                               ; preds = %91
  %100 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !3394
  %101 = call i32 @fclose(%struct.__sFILE* %100), !dbg !3395
  store i32 %101, i32* %7, align 4, !dbg !3396
  %102 = load i32, i32* %7, align 4, !dbg !3397
  %103 = icmp eq i32 %102, -1, !dbg !3399
  br i1 %103, label %104, label %105, !dbg !3400

104:                                              ; preds = %99
  br label %128, !dbg !3401

105:                                              ; preds = %99
  %106 = load i32, i32* @verbosity, align 4, !dbg !3402
  %107 = icmp sge i32 %106, 2, !dbg !3404
  br i1 %107, label %108, label %113, !dbg !3405

108:                                              ; preds = %105
  %109 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3406
  %110 = getelementptr inbounds %struct._reent, %struct._reent* %109, i32 0, i32 3, !dbg !3406
  %111 = load %struct.__sFILE*, %struct.__sFILE** %110, align 4, !dbg !3406
  %112 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0)), !dbg !3407
  br label %113, !dbg !3407

113:                                              ; preds = %108, %105
  store i8 1, i8* %2, align 1, !dbg !3408
  br label %167, !dbg !3408

114:                                              ; preds = %54, %49, %36
  call void @llvm.dbg.label(metadata !3409), !dbg !3410
  %115 = load i8*, i8** %4, align 4, !dbg !3411
  call void @BZ2_bzReadClose(i32* %6, i8* %115), !dbg !3412
  %116 = load i32, i32* @verbosity, align 4, !dbg !3413
  %117 = icmp eq i32 %116, 0, !dbg !3415
  br i1 %117, label %118, label %124, !dbg !3416

118:                                              ; preds = %114
  %119 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3417
  %120 = getelementptr inbounds %struct._reent, %struct._reent* %119, i32 0, i32 3, !dbg !3417
  %121 = load %struct.__sFILE*, %struct.__sFILE** %120, align 4, !dbg !3417
  %122 = load i8*, i8** @progName, align 4, !dbg !3418
  %123 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.101, i32 0, i32 0), i8* %122, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)), !dbg !3419
  br label %124, !dbg !3419

124:                                              ; preds = %118, %114
  %125 = load i32, i32* %5, align 4, !dbg !3420
  switch i32 %125, label %166 [
    i32 -9, label %126
    i32 -6, label %127
    i32 -4, label %129
    i32 -3, label %134
    i32 -7, label %135
    i32 -5, label %140
  ], !dbg !3421

126:                                              ; preds = %124
  call void @configError() #7, !dbg !3422
  unreachable, !dbg !3422

127:                                              ; preds = %124
  br label %128, !dbg !3422

128:                                              ; preds = %127, %104, %98, %21
  call void @llvm.dbg.label(metadata !3424), !dbg !3425
  call void @ioError() #7, !dbg !3426
  unreachable, !dbg !3426

129:                                              ; preds = %124
  %130 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3427
  %131 = getelementptr inbounds %struct._reent, %struct._reent* %130, i32 0, i32 3, !dbg !3427
  %132 = load %struct.__sFILE*, %struct.__sFILE** %131, align 4, !dbg !3427
  %133 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %132, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.102, i32 0, i32 0)), !dbg !3428
  store i8 0, i8* %2, align 1, !dbg !3429
  br label %167, !dbg !3429

134:                                              ; preds = %124
  call void @outOfMemory() #7, !dbg !3430
  unreachable, !dbg !3430

135:                                              ; preds = %124
  %136 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3431
  %137 = getelementptr inbounds %struct._reent, %struct._reent* %136, i32 0, i32 3, !dbg !3431
  %138 = load %struct.__sFILE*, %struct.__sFILE** %137, align 4, !dbg !3431
  %139 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %138, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.103, i32 0, i32 0)), !dbg !3432
  store i8 0, i8* %2, align 1, !dbg !3433
  br label %167, !dbg !3433

140:                                              ; preds = %124
  %141 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !3434
  %142 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3436
  %143 = getelementptr inbounds %struct._reent, %struct._reent* %142, i32 0, i32 1, !dbg !3436
  %144 = load %struct.__sFILE*, %struct.__sFILE** %143, align 4, !dbg !3436
  %145 = icmp ne %struct.__sFILE* %141, %144, !dbg !3437
  br i1 %145, label %146, label %149, !dbg !3438

146:                                              ; preds = %140
  %147 = load %struct.__sFILE*, %struct.__sFILE** %3, align 4, !dbg !3439
  %148 = call i32 @fclose(%struct.__sFILE* %147), !dbg !3440
  br label %149, !dbg !3440

149:                                              ; preds = %146, %140
  %150 = load i32, i32* %8, align 4, !dbg !3441
  %151 = icmp eq i32 %150, 1, !dbg !3443
  br i1 %151, label %152, label %157, !dbg !3444

152:                                              ; preds = %149
  %153 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3445
  %154 = getelementptr inbounds %struct._reent, %struct._reent* %153, i32 0, i32 3, !dbg !3445
  %155 = load %struct.__sFILE*, %struct.__sFILE** %154, align 4, !dbg !3445
  %156 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %155, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.104, i32 0, i32 0)), !dbg !3447
  store i8 0, i8* %2, align 1, !dbg !3448
  br label %167, !dbg !3448

157:                                              ; preds = %149
  %158 = load i8, i8* @noisy, align 1, !dbg !3449
  %159 = icmp ne i8 %158, 0, !dbg !3449
  br i1 %159, label %160, label %165, !dbg !3452

160:                                              ; preds = %157
  %161 = load %struct._reent*, %struct._reent** @_impure_ptr, align 4, !dbg !3453
  %162 = getelementptr inbounds %struct._reent, %struct._reent* %161, i32 0, i32 3, !dbg !3453
  %163 = load %struct.__sFILE*, %struct.__sFILE** %162, align 4, !dbg !3453
  %164 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %163, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.105, i32 0, i32 0)), !dbg !3454
  br label %165, !dbg !3454

165:                                              ; preds = %160, %157
  store i8 1, i8* %2, align 1, !dbg !3455
  br label %167, !dbg !3455

166:                                              ; preds = %124
  call void @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.106, i32 0, i32 0)) #7, !dbg !3456
  unreachable, !dbg !3456

167:                                              ; preds = %165, %152, %135, %129, %113
  %168 = load i8, i8* %2, align 1, !dbg !3457
  ret i8 %168, !dbg !3457
}

attributes #0 = { noinline nounwind optnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { allocsize(0) "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline noreturn nounwind optnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-features"="+relax,-save-restore" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { noreturn }
attributes #8 = { allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!352, !353, !354, !355, !356}
!llvm.ident = !{!357}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "zSuffix", scope: !2, file: !3, line: 1112, type: !32, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !29, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "bzip2.c", directory: "/home/wenhongbo/code/opt-searcher/llvm_runner/data/bzip2")
!4 = !{}
!5 = !{!6, !8, !11, !12, !13, !14, !21, !26, !27, !28}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !3, line: 162, baseType: !7)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "Char", file: !3, line: 161, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "Int32", file: !3, line: 164, baseType: !13)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Cell", file: !3, line: 1707, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zzzz", file: !3, line: 1703, size: 64, elements: !17)
!17 = !{!18, !19}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !16, file: !3, line: 1704, baseType: !8, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !16, file: !3, line: 1705, baseType: !20, size: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 40, baseType: !23)
!22 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/strings.h", directory: "")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !24, line: 131, baseType: !25)
!24 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/_types.h", directory: "")
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !3, line: 163, baseType: !7)
!27 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 32)
!29 = !{!0, !30, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !72, !74, !76, !78, !80, !298, !300}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "unzSuffix", scope: !2, file: !3, line: 1114, type: !32, isLocal: false, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !35)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!35 = !{!36}
!36 = !DISubrange(count: 4)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "verbosity", scope: !2, file: !3, line: 183, type: !12, isLocal: false, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "keepInputFiles", scope: !2, file: !3, line: 184, type: !6, isLocal: false, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "smallMode", scope: !2, file: !3, line: 184, type: !6, isLocal: false, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "deleteOutputOnInterrupt", scope: !2, file: !3, line: 184, type: !6, isLocal: false, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "forceOverwrite", scope: !2, file: !3, line: 185, type: !6, isLocal: false, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "testFailsExist", scope: !2, file: !3, line: 185, type: !6, isLocal: false, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "unzFailsExist", scope: !2, file: !3, line: 185, type: !6, isLocal: false, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "noisy", scope: !2, file: !3, line: 185, type: !6, isLocal: false, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "numFileNames", scope: !2, file: !3, line: 186, type: !12, isLocal: false, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "numFilesProcessed", scope: !2, file: !3, line: 186, type: !12, isLocal: false, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "blockSize100k", scope: !2, file: !3, line: 186, type: !12, isLocal: false, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "exitValue", scope: !2, file: !3, line: 187, type: !12, isLocal: false, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "opMode", scope: !2, file: !3, line: 199, type: !12, isLocal: false, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "srcMode", scope: !2, file: !3, line: 200, type: !12, isLocal: false, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "longestFileName", scope: !2, file: !3, line: 204, type: !12, isLocal: false, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "inName", scope: !2, file: !3, line: 205, type: !69, isLocal: false, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8272, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 1034)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "outName", scope: !2, file: !3, line: 206, type: !69, isLocal: false, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "tmpName", scope: !2, file: !3, line: 207, type: !69, isLocal: false, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "progName", scope: !2, file: !3, line: 208, type: !8, isLocal: false, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "progNameReally", scope: !2, file: !3, line: 209, type: !69, isLocal: false, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "outputHandleJustInCase", scope: !2, file: !3, line: 210, type: !82, isLocal: false, isDefinition: true)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !84, line: 66, baseType: !85)
!84 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/stdio.h", directory: "")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !86, line: 292, baseType: !87)
!86 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/reent.h", directory: "")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !86, line: 186, size: 832, elements: !88)
!88 = !{!89, !91, !92, !93, !95, !96, !101, !102, !103, !264, !270, !276, !280, !281, !282, !283, !285, !287, !288, !289, !291, !292, !296, !297}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !87, file: !86, line: 187, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !87, file: !86, line: 188, baseType: !13, size: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !87, file: !86, line: 189, baseType: !13, size: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !87, file: !86, line: 190, baseType: !94, size: 16, offset: 96)
!94 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !87, file: !86, line: 191, baseType: !94, size: 16, offset: 112)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !87, file: !86, line: 192, baseType: !97, size: 64, offset: 128)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !86, line: 122, size: 64, elements: !98)
!98 = !{!99, !100}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !97, file: !86, line: 123, baseType: !90, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !97, file: !86, line: 124, baseType: !13, size: 32, offset: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !87, file: !86, line: 193, baseType: !13, size: 32, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !87, file: !86, line: 200, baseType: !11, size: 32, offset: 224)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !87, file: !86, line: 202, baseType: !104, size: 32, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !108, !11, !151, !13}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !24, line: 147, baseType: !13)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !86, line: 613, size: 8512, elements: !110)
!110 = !{!111, !112, !114, !115, !116, !117, !121, !122, !125, !126, !130, !145, !146, !147, !149, !150, !152, !228, !249, !250, !255, !262}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !109, file: !86, line: 615, baseType: !13, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !109, file: !86, line: 620, baseType: !113, size: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !109, file: !86, line: 620, baseType: !113, size: 32, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !109, file: !86, line: 620, baseType: !113, size: 32, offset: 96)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !109, file: !86, line: 622, baseType: !13, size: 32, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !109, file: !86, line: 623, baseType: !118, size: 200, offset: 160)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 25)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !109, file: !86, line: 626, baseType: !13, size: 32, offset: 384)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !109, file: !86, line: 627, baseType: !123, size: 32, offset: 416)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !86, line: 45, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !109, file: !86, line: 629, baseType: !13, size: 32, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !109, file: !86, line: 631, baseType: !127, size: 32, offset: 480)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !108}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !109, file: !86, line: 634, baseType: !131, size: 32, offset: 512)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 32)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !86, line: 52, size: 192, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !132, file: !86, line: 54, baseType: !131, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !132, file: !86, line: 55, baseType: !13, size: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !132, file: !86, line: 55, baseType: !13, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !132, file: !86, line: 55, baseType: !13, size: 32, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !132, file: !86, line: 55, baseType: !13, size: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !132, file: !86, line: 56, baseType: !140, size: 32, offset: 160)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 32, elements: !143)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !86, line: 22, baseType: !142)
!142 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!143 = !{!144}
!144 = !DISubrange(count: 1)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !109, file: !86, line: 635, baseType: !13, size: 32, offset: 544)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !109, file: !86, line: 636, baseType: !131, size: 32, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !109, file: !86, line: 637, baseType: !148, size: 32, offset: 608)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !109, file: !86, line: 640, baseType: !13, size: 32, offset: 640)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !109, file: !86, line: 641, baseType: !151, size: 32, offset: 672)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !109, file: !86, line: 676, baseType: !153, size: 1920, offset: 704)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !109, file: !86, line: 643, size: 1920, elements: !154)
!154 = !{!155, !219}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !153, file: !86, line: 666, baseType: !156, size: 1664)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !86, line: 645, size: 1664, elements: !157)
!157 = !{!158, !159, !160, !164, !176, !177, !179, !189, !202, !203, !204, !208, !212, !213, !214, !215, !216, !217, !218}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !156, file: !86, line: 647, baseType: !25, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !156, file: !86, line: 648, baseType: !151, size: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !156, file: !86, line: 649, baseType: !161, size: 208, offset: 64)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 26)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !156, file: !86, line: 650, baseType: !165, size: 288, offset: 288)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !86, line: 60, size: 288, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !165, file: !86, line: 62, baseType: !13, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !165, file: !86, line: 63, baseType: !13, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !165, file: !86, line: 64, baseType: !13, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !165, file: !86, line: 65, baseType: !13, size: 32, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !165, file: !86, line: 66, baseType: !13, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !165, file: !86, line: 67, baseType: !13, size: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !165, file: !86, line: 68, baseType: !13, size: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !165, file: !86, line: 69, baseType: !13, size: 32, offset: 224)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !165, file: !86, line: 70, baseType: !13, size: 32, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !156, file: !86, line: 651, baseType: !13, size: 32, offset: 576)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !156, file: !86, line: 652, baseType: !178, size: 64, offset: 640)
!178 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !156, file: !86, line: 653, baseType: !180, size: 112, offset: 704)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !86, line: 324, size: 112, elements: !181)
!181 = !{!182, !187, !188}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !180, file: !86, line: 325, baseType: !183, size: 48)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 48, elements: !185)
!184 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!185 = !{!186}
!186 = !DISubrange(count: 3)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !180, file: !86, line: 326, baseType: !183, size: 48, offset: 48)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !180, file: !86, line: 327, baseType: !184, size: 16, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !156, file: !86, line: 654, baseType: !190, size: 64, offset: 832)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !24, line: 170, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 162, size: 64, elements: !192)
!192 = !{!193, !194}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !191, file: !24, line: 164, baseType: !13, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !191, file: !24, line: 169, baseType: !195, size: 32, offset: 32)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !24, line: 165, size: 32, elements: !196)
!196 = !{!197, !200}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !195, file: !24, line: 167, baseType: !198, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !199, line: 116, baseType: !25)
!199 = !DIFile(filename: "clang+llvm-12.0.0-x86_64-linux-gnu-ubuntu-16.04/lib/clang/12.0.0/include/stddef.h", directory: "/home/wenhongbo/code")
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !195, file: !24, line: 168, baseType: !201, size: 32)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !35)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !156, file: !86, line: 655, baseType: !190, size: 64, offset: 896)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !156, file: !86, line: 656, baseType: !190, size: 64, offset: 960)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !156, file: !86, line: 657, baseType: !205, size: 64, offset: 1024)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 8)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !156, file: !86, line: 658, baseType: !209, size: 192, offset: 1088)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 24)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !156, file: !86, line: 659, baseType: !13, size: 32, offset: 1280)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !156, file: !86, line: 660, baseType: !190, size: 64, offset: 1312)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !156, file: !86, line: 661, baseType: !190, size: 64, offset: 1376)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !156, file: !86, line: 662, baseType: !190, size: 64, offset: 1440)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !156, file: !86, line: 663, baseType: !190, size: 64, offset: 1504)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !156, file: !86, line: 664, baseType: !190, size: 64, offset: 1568)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !156, file: !86, line: 665, baseType: !13, size: 32, offset: 1632)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !153, file: !86, line: 675, baseType: !220, size: 1920)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !86, line: 670, size: 1920, elements: !221)
!221 = !{!222, !226}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !220, file: !86, line: 673, baseType: !223, size: 960)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 960, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 30)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !220, file: !86, line: 674, baseType: !227, size: 960, offset: 960)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 960, elements: !224)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !109, file: !86, line: 680, baseType: !229, size: 32, offset: 2624)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 32)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !86, line: 98, size: 3200, elements: !231)
!231 = !{!232, !233, !234, !241}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !230, file: !86, line: 99, baseType: !229, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !230, file: !86, line: 100, baseType: !13, size: 32, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !230, file: !86, line: 102, baseType: !235, size: 1024, offset: 64)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 1024, elements: !239)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 32)
!237 = !DISubroutineType(types: !238)
!238 = !{null}
!239 = !{!240}
!240 = !DISubrange(count: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !230, file: !86, line: 103, baseType: !242, size: 2112, offset: 1088)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !86, line: 79, size: 2112, elements: !243)
!243 = !{!244, !246, !247, !248}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !242, file: !86, line: 80, baseType: !245, size: 1024)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, elements: !239)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !242, file: !86, line: 81, baseType: !245, size: 1024, offset: 1024)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !242, file: !86, line: 83, baseType: !141, size: 32, offset: 2048)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !242, file: !86, line: 86, baseType: !141, size: 32, offset: 2080)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !109, file: !86, line: 681, baseType: !230, size: 3200, offset: 2656)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !109, file: !86, line: 685, baseType: !251, size: 32, offset: 5856)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 32)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !13}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !109, file: !86, line: 690, baseType: !256, size: 96, offset: 5888)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !86, line: 296, size: 96, elements: !257)
!257 = !{!258, !260, !261}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !256, file: !86, line: 298, baseType: !259, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !256, file: !86, line: 299, baseType: !13, size: 32, offset: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !256, file: !86, line: 300, baseType: !113, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !109, file: !86, line: 692, baseType: !263, size: 2496, offset: 5984)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 2496, elements: !185)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !87, file: !86, line: 204, baseType: !265, size: 32, offset: 288)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 32)
!266 = !DISubroutineType(types: !267)
!267 = !{!107, !108, !11, !268, !13}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !87, file: !86, line: 207, baseType: !271, size: 32, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 32)
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !108, !11, !274, !13}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !24, line: 116, baseType: !275)
!275 = !DIBasicType(name: "long int", size: 32, encoding: DW_ATE_signed)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !87, file: !86, line: 208, baseType: !277, size: 32, offset: 352)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 32)
!278 = !DISubroutineType(types: !279)
!279 = !{!13, !108, !11}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !87, file: !86, line: 211, baseType: !97, size: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !87, file: !86, line: 212, baseType: !90, size: 32, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !87, file: !86, line: 213, baseType: !13, size: 32, offset: 480)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !87, file: !86, line: 216, baseType: !284, size: 24, offset: 512)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 24, elements: !185)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !87, file: !86, line: 217, baseType: !286, size: 8, offset: 536)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !143)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !87, file: !86, line: 220, baseType: !97, size: 64, offset: 544)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !87, file: !86, line: 223, baseType: !13, size: 32, offset: 608)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !87, file: !86, line: 224, baseType: !290, size: 32, offset: 640)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !24, line: 46, baseType: !275)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !87, file: !86, line: 227, baseType: !108, size: 32, offset: 672)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !87, file: !86, line: 231, baseType: !293, size: 32, offset: 704)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !86, line: 35, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !295, line: 12, baseType: !13)
!295 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/lock.h", directory: "")
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !87, file: !86, line: 233, baseType: !190, size: 64, offset: 736)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !87, file: !86, line: 234, baseType: !13, size: 32, offset: 800)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "workFactor", scope: !2, file: !3, line: 211, type: !12, isLocal: false, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(name: "fileMetaInfo", scope: !2, file: !3, line: 1042, type: !302, isLocal: true, isDefinition: true)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !303, line: 27, size: 704, elements: !304)
!303 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/stat.h", directory: "")
!304 = !{!305, !309, !312, !317, !320, !323, !326, !327, !330, !340, !341, !342, !345, !348}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !302, file: !303, line: 29, baseType: !306, size: 16)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !307, line: 161, baseType: !308)
!307 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/types.h", directory: "")
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !24, line: 56, baseType: !94)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !302, file: !303, line: 30, baseType: !310, size: 16, offset: 16)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !307, line: 139, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !24, line: 75, baseType: !184)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !302, file: !303, line: 31, baseType: !313, size: 32, offset: 32)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !307, line: 189, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !24, line: 90, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !316, line: 79, baseType: !25)
!316 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/machine/_default_types.h", directory: "")
!317 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !302, file: !303, line: 32, baseType: !318, size: 16, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !307, line: 194, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !24, line: 209, baseType: !184)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !302, file: !303, line: 33, baseType: !321, size: 16, offset: 80)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !307, line: 165, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !24, line: 60, baseType: !184)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !302, file: !303, line: 34, baseType: !324, size: 16, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !307, line: 169, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !24, line: 63, baseType: !184)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !302, file: !303, line: 35, baseType: !306, size: 16, offset: 112)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !302, file: !303, line: 36, baseType: !328, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !307, line: 157, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !24, line: 102, baseType: !290)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !302, file: !303, line: 42, baseType: !331, size: 128, offset: 192)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !332, line: 47, size: 128, elements: !333)
!332 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/_timespec.h", directory: "")
!333 = !{!334, !339}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !331, file: !332, line: 48, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !336, line: 42, baseType: !337)
!336 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/_timeval.h", directory: "")
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !316, line: 200, baseType: !338)
!338 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !331, file: !332, line: 49, baseType: !275, size: 32, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !302, file: !303, line: 43, baseType: !331, size: 128, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !302, file: !303, line: 44, baseType: !331, size: 128, offset: 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !302, file: !303, line: 45, baseType: !343, size: 32, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !307, line: 102, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !24, line: 34, baseType: !275)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !302, file: !303, line: 46, baseType: !346, size: 32, offset: 608)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !307, line: 97, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !24, line: 30, baseType: !275)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !302, file: !303, line: 48, baseType: !349, size: 64, offset: 640)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 64, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 2)
!352 = !{i32 7, !"Dwarf Version", i32 4}
!353 = !{i32 2, !"Debug Info Version", i32 3}
!354 = !{i32 1, !"wchar_size", i32 4}
!355 = !{i32 1, !"target-abi", !"ilp32"}
!356 = !{i32 1, !"SmallDataLimit", i32 8}
!357 = !{!"clang version 12.0.0"}
!358 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 1784, type: !359, scopeLine: 1785, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!359 = !DISubroutineType(types: !360)
!360 = !{!361, !361, !362}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "IntNative", file: !3, line: 176, baseType: !13)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!363 = !DILocalVariable(name: "argc", arg: 1, scope: !358, file: !3, line: 1784, type: !361)
!364 = !DILocation(line: 1784, column: 28, scope: !358)
!365 = !DILocalVariable(name: "argv", arg: 2, scope: !358, file: !3, line: 1784, type: !362)
!366 = !DILocation(line: 1784, column: 40, scope: !358)
!367 = !DILocalVariable(name: "i", scope: !358, file: !3, line: 1786, type: !12)
!368 = !DILocation(line: 1786, column: 11, scope: !358)
!369 = !DILocalVariable(name: "j", scope: !358, file: !3, line: 1786, type: !12)
!370 = !DILocation(line: 1786, column: 14, scope: !358)
!371 = !DILocalVariable(name: "tmp", scope: !358, file: !3, line: 1787, type: !8)
!372 = !DILocation(line: 1787, column: 12, scope: !358)
!373 = !DILocalVariable(name: "argList", scope: !358, file: !3, line: 1788, type: !14)
!374 = !DILocation(line: 1788, column: 12, scope: !358)
!375 = !DILocalVariable(name: "aa", scope: !358, file: !3, line: 1789, type: !14)
!376 = !DILocation(line: 1789, column: 12, scope: !358)
!377 = !DILocalVariable(name: "decode", scope: !358, file: !3, line: 1790, type: !6)
!378 = !DILocation(line: 1790, column: 11, scope: !358)
!379 = !DILocation(line: 1799, column: 28, scope: !358)
!380 = !DILocation(line: 1800, column: 28, scope: !358)
!381 = !DILocation(line: 1801, column: 28, scope: !358)
!382 = !DILocation(line: 1802, column: 28, scope: !358)
!383 = !DILocation(line: 1803, column: 28, scope: !358)
!384 = !DILocation(line: 1804, column: 28, scope: !358)
!385 = !DILocation(line: 1805, column: 28, scope: !358)
!386 = !DILocation(line: 1806, column: 28, scope: !358)
!387 = !DILocation(line: 1807, column: 28, scope: !358)
!388 = !DILocation(line: 1808, column: 28, scope: !358)
!389 = !DILocation(line: 1809, column: 28, scope: !358)
!390 = !DILocation(line: 1810, column: 28, scope: !358)
!391 = !DILocation(line: 1811, column: 28, scope: !358)
!392 = !DILocation(line: 1812, column: 28, scope: !358)
!393 = !DILocation(line: 1813, column: 10, scope: !358)
!394 = !DILocation(line: 1813, column: 6, scope: !358)
!395 = !DILocation(line: 1816, column: 4, scope: !358)
!396 = !DILocation(line: 1819, column: 4, scope: !358)
!397 = !DILocation(line: 1823, column: 4, scope: !358)
!398 = !DILocation(line: 1824, column: 4, scope: !358)
!399 = !DILocation(line: 1826, column: 35, scope: !358)
!400 = !DILocation(line: 1826, column: 4, scope: !358)
!401 = !DILocation(line: 1827, column: 13, scope: !358)
!402 = !DILocation(line: 1828, column: 13, scope: !403)
!403 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1828, column: 4)
!404 = !DILocation(line: 1828, column: 9, scope: !403)
!405 = !DILocation(line: 1828, column: 36, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !3, line: 1828, column: 4)
!407 = !DILocation(line: 1828, column: 35, scope: !406)
!408 = !DILocation(line: 1828, column: 40, scope: !406)
!409 = !DILocation(line: 1828, column: 4, scope: !403)
!410 = !DILocation(line: 1829, column: 12, scope: !411)
!411 = distinct !DILexicalBlock(scope: !406, file: !3, line: 1829, column: 11)
!412 = !DILocation(line: 1829, column: 11, scope: !411)
!413 = !DILocation(line: 1829, column: 16, scope: !411)
!414 = !DILocation(line: 1829, column: 11, scope: !406)
!415 = !DILocation(line: 1829, column: 40, scope: !411)
!416 = !DILocation(line: 1829, column: 44, scope: !411)
!417 = !DILocation(line: 1829, column: 38, scope: !411)
!418 = !DILocation(line: 1829, column: 29, scope: !411)
!419 = !DILocation(line: 1829, column: 19, scope: !411)
!420 = !DILocation(line: 1828, column: 52, scope: !406)
!421 = !DILocation(line: 1828, column: 4, scope: !406)
!422 = distinct !{!422, !409, !423, !424}
!423 = !DILocation(line: 1829, column: 46, scope: !403)
!424 = !{!"llvm.loop.mustprogress"}
!425 = !DILocation(line: 1835, column: 12, scope: !358)
!426 = !DILocation(line: 1836, column: 4, scope: !358)
!427 = !DILocation(line: 1837, column: 4, scope: !358)
!428 = !DILocation(line: 1838, column: 11, scope: !429)
!429 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1838, column: 4)
!430 = !DILocation(line: 1838, column: 9, scope: !429)
!431 = !DILocation(line: 1838, column: 16, scope: !432)
!432 = distinct !DILexicalBlock(scope: !429, file: !3, line: 1838, column: 4)
!433 = !DILocation(line: 1838, column: 21, scope: !432)
!434 = !DILocation(line: 1838, column: 25, scope: !432)
!435 = !DILocation(line: 1838, column: 18, scope: !432)
!436 = !DILocation(line: 1838, column: 4, scope: !429)
!437 = !DILocation(line: 1839, column: 7, scope: !432)
!438 = !DILocation(line: 1838, column: 30, scope: !432)
!439 = !DILocation(line: 1838, column: 4, scope: !432)
!440 = distinct !{!440, !436, !441, !424}
!441 = !DILocation(line: 1839, column: 7, scope: !429)
!442 = !DILocation(line: 1843, column: 20, scope: !358)
!443 = !DILocation(line: 1844, column: 20, scope: !358)
!444 = !DILocation(line: 1845, column: 20, scope: !358)
!445 = !DILocation(line: 1846, column: 14, scope: !446)
!446 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1846, column: 4)
!447 = !DILocation(line: 1846, column: 12, scope: !446)
!448 = !DILocation(line: 1846, column: 9, scope: !446)
!449 = !DILocation(line: 1846, column: 23, scope: !450)
!450 = distinct !DILexicalBlock(scope: !446, file: !3, line: 1846, column: 4)
!451 = !DILocation(line: 1846, column: 26, scope: !450)
!452 = !DILocation(line: 1846, column: 4, scope: !446)
!453 = !DILocation(line: 1847, column: 11, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !3, line: 1847, column: 11)
!455 = distinct !DILexicalBlock(scope: !450, file: !3, line: 1846, column: 50)
!456 = !DILocation(line: 1847, column: 11, scope: !455)
!457 = !DILocation(line: 1847, column: 34, scope: !458)
!458 = distinct !DILexicalBlock(scope: !454, file: !3, line: 1847, column: 25)
!459 = !DILocation(line: 1847, column: 43, scope: !458)
!460 = !DILocation(line: 1848, column: 11, scope: !461)
!461 = distinct !DILexicalBlock(scope: !455, file: !3, line: 1848, column: 11)
!462 = !DILocation(line: 1848, column: 15, scope: !461)
!463 = !DILocation(line: 1848, column: 23, scope: !461)
!464 = !DILocation(line: 1848, column: 30, scope: !461)
!465 = !DILocation(line: 1848, column: 33, scope: !461)
!466 = !DILocation(line: 1848, column: 11, scope: !455)
!467 = !DILocation(line: 1848, column: 41, scope: !461)
!468 = !DILocation(line: 1849, column: 19, scope: !455)
!469 = !DILocation(line: 1850, column: 11, scope: !470)
!470 = distinct !DILexicalBlock(scope: !455, file: !3, line: 1850, column: 11)
!471 = !DILocation(line: 1850, column: 43, scope: !470)
!472 = !DILocation(line: 1850, column: 47, scope: !470)
!473 = !DILocation(line: 1850, column: 36, scope: !470)
!474 = !DILocation(line: 1850, column: 27, scope: !470)
!475 = !DILocation(line: 1850, column: 11, scope: !455)
!476 = !DILocation(line: 1851, column: 42, scope: !470)
!477 = !DILocation(line: 1851, column: 46, scope: !470)
!478 = !DILocation(line: 1851, column: 35, scope: !470)
!479 = !DILocation(line: 1851, column: 26, scope: !470)
!480 = !DILocation(line: 1851, column: 10, scope: !470)
!481 = !DILocation(line: 1852, column: 4, scope: !455)
!482 = !DILocation(line: 1846, column: 40, scope: !450)
!483 = !DILocation(line: 1846, column: 44, scope: !450)
!484 = !DILocation(line: 1846, column: 38, scope: !450)
!485 = !DILocation(line: 1846, column: 4, scope: !450)
!486 = distinct !{!486, !452, !487, !424}
!487 = !DILocation(line: 1852, column: 4, scope: !446)
!488 = !DILocation(line: 1856, column: 8, scope: !489)
!489 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1856, column: 8)
!490 = !DILocation(line: 1856, column: 21, scope: !489)
!491 = !DILocation(line: 1856, column: 8, scope: !358)
!492 = !DILocation(line: 1857, column: 15, scope: !489)
!493 = !DILocation(line: 1857, column: 7, scope: !489)
!494 = !DILocation(line: 1857, column: 38, scope: !489)
!495 = !DILocation(line: 1862, column: 11, scope: !358)
!496 = !DILocation(line: 1864, column: 19, scope: !497)
!497 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1864, column: 9)
!498 = !DILocation(line: 1864, column: 10, scope: !497)
!499 = !DILocation(line: 1864, column: 39, scope: !497)
!500 = !DILocation(line: 1864, column: 45, scope: !497)
!501 = !DILocation(line: 1865, column: 19, scope: !497)
!502 = !DILocation(line: 1865, column: 10, scope: !497)
!503 = !DILocation(line: 1865, column: 39, scope: !497)
!504 = !DILocation(line: 1864, column: 9, scope: !358)
!505 = !DILocation(line: 1866, column: 14, scope: !497)
!506 = !DILocation(line: 1866, column: 7, scope: !497)
!507 = !DILocation(line: 1868, column: 19, scope: !508)
!508 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1868, column: 9)
!509 = !DILocation(line: 1868, column: 10, scope: !508)
!510 = !DILocation(line: 1868, column: 39, scope: !508)
!511 = !DILocation(line: 1868, column: 45, scope: !508)
!512 = !DILocation(line: 1869, column: 19, scope: !508)
!513 = !DILocation(line: 1869, column: 10, scope: !508)
!514 = !DILocation(line: 1869, column: 39, scope: !508)
!515 = !DILocation(line: 1869, column: 45, scope: !508)
!516 = !DILocation(line: 1870, column: 19, scope: !508)
!517 = !DILocation(line: 1870, column: 10, scope: !508)
!518 = !DILocation(line: 1870, column: 38, scope: !508)
!519 = !DILocation(line: 1870, column: 45, scope: !508)
!520 = !DILocation(line: 1871, column: 19, scope: !508)
!521 = !DILocation(line: 1871, column: 10, scope: !508)
!522 = !DILocation(line: 1871, column: 38, scope: !508)
!523 = !DILocation(line: 1868, column: 9, scope: !358)
!524 = !DILocation(line: 1872, column: 14, scope: !525)
!525 = distinct !DILexicalBlock(scope: !508, file: !3, line: 1871, column: 47)
!526 = !DILocation(line: 1873, column: 18, scope: !525)
!527 = !DILocation(line: 1873, column: 31, scope: !525)
!528 = !DILocation(line: 1873, column: 17, scope: !525)
!529 = !DILocation(line: 1873, column: 15, scope: !525)
!530 = !DILocation(line: 1874, column: 4, scope: !525)
!531 = !DILocation(line: 1878, column: 14, scope: !532)
!532 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1878, column: 4)
!533 = !DILocation(line: 1878, column: 12, scope: !532)
!534 = !DILocation(line: 1878, column: 9, scope: !532)
!535 = !DILocation(line: 1878, column: 23, scope: !536)
!536 = distinct !DILexicalBlock(scope: !532, file: !3, line: 1878, column: 4)
!537 = !DILocation(line: 1878, column: 26, scope: !536)
!538 = !DILocation(line: 1878, column: 4, scope: !532)
!539 = !DILocation(line: 1879, column: 11, scope: !540)
!540 = distinct !DILexicalBlock(scope: !541, file: !3, line: 1879, column: 11)
!541 = distinct !DILexicalBlock(scope: !536, file: !3, line: 1878, column: 50)
!542 = !DILocation(line: 1879, column: 11, scope: !541)
!543 = !DILocation(line: 1879, column: 25, scope: !540)
!544 = !DILocation(line: 1880, column: 11, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !3, line: 1880, column: 11)
!546 = !DILocation(line: 1880, column: 15, scope: !545)
!547 = !DILocation(line: 1880, column: 23, scope: !545)
!548 = !DILocation(line: 1880, column: 30, scope: !545)
!549 = !DILocation(line: 1880, column: 33, scope: !545)
!550 = !DILocation(line: 1880, column: 37, scope: !545)
!551 = !DILocation(line: 1880, column: 45, scope: !545)
!552 = !DILocation(line: 1880, column: 11, scope: !541)
!553 = !DILocation(line: 1881, column: 17, scope: !554)
!554 = distinct !DILexicalBlock(scope: !555, file: !3, line: 1881, column: 10)
!555 = distinct !DILexicalBlock(scope: !545, file: !3, line: 1880, column: 53)
!556 = !DILocation(line: 1881, column: 15, scope: !554)
!557 = !DILocation(line: 1881, column: 22, scope: !558)
!558 = distinct !DILexicalBlock(scope: !554, file: !3, line: 1881, column: 10)
!559 = !DILocation(line: 1881, column: 26, scope: !558)
!560 = !DILocation(line: 1881, column: 31, scope: !558)
!561 = !DILocation(line: 1881, column: 34, scope: !558)
!562 = !DILocation(line: 1881, column: 10, scope: !554)
!563 = !DILocation(line: 1882, column: 21, scope: !564)
!564 = distinct !DILexicalBlock(scope: !558, file: !3, line: 1881, column: 48)
!565 = !DILocation(line: 1882, column: 25, scope: !564)
!566 = !DILocation(line: 1882, column: 30, scope: !564)
!567 = !DILocation(line: 1882, column: 13, scope: !564)
!568 = !DILocation(line: 1883, column: 43, scope: !569)
!569 = distinct !DILexicalBlock(scope: !564, file: !3, line: 1882, column: 34)
!570 = !DILocation(line: 1883, column: 53, scope: !569)
!571 = !DILocation(line: 1884, column: 43, scope: !569)
!572 = !DILocation(line: 1884, column: 53, scope: !569)
!573 = !DILocation(line: 1885, column: 43, scope: !569)
!574 = !DILocation(line: 1885, column: 51, scope: !569)
!575 = !DILocation(line: 1886, column: 43, scope: !569)
!576 = !DILocation(line: 1886, column: 51, scope: !569)
!577 = !DILocation(line: 1887, column: 43, scope: !569)
!578 = !DILocation(line: 1887, column: 54, scope: !569)
!579 = !DILocation(line: 1888, column: 43, scope: !569)
!580 = !DILocation(line: 1888, column: 51, scope: !569)
!581 = !DILocation(line: 1889, column: 43, scope: !569)
!582 = !DILocation(line: 1889, column: 51, scope: !569)
!583 = !DILocation(line: 1890, column: 43, scope: !569)
!584 = !DILocation(line: 1890, column: 52, scope: !569)
!585 = !DILocation(line: 1891, column: 43, scope: !569)
!586 = !DILocation(line: 1891, column: 48, scope: !569)
!587 = !DILocation(line: 1892, column: 43, scope: !569)
!588 = !DILocation(line: 1892, column: 48, scope: !569)
!589 = !DILocation(line: 1893, column: 43, scope: !569)
!590 = !DILocation(line: 1893, column: 48, scope: !569)
!591 = !DILocation(line: 1894, column: 43, scope: !569)
!592 = !DILocation(line: 1894, column: 48, scope: !569)
!593 = !DILocation(line: 1895, column: 43, scope: !569)
!594 = !DILocation(line: 1895, column: 48, scope: !569)
!595 = !DILocation(line: 1896, column: 43, scope: !569)
!596 = !DILocation(line: 1896, column: 48, scope: !569)
!597 = !DILocation(line: 1897, column: 43, scope: !569)
!598 = !DILocation(line: 1897, column: 48, scope: !569)
!599 = !DILocation(line: 1898, column: 43, scope: !569)
!600 = !DILocation(line: 1898, column: 48, scope: !569)
!601 = !DILocation(line: 1899, column: 43, scope: !569)
!602 = !DILocation(line: 1899, column: 48, scope: !569)
!603 = !DILocation(line: 1901, column: 26, scope: !569)
!604 = !DILocation(line: 1901, column: 48, scope: !569)
!605 = !DILocation(line: 1902, column: 35, scope: !569)
!606 = !DILocation(line: 1902, column: 39, scope: !569)
!607 = !DILocation(line: 1903, column: 34, scope: !569)
!608 = !DILocation(line: 1903, column: 26, scope: !569)
!609 = !DILocation(line: 1904, column: 26, scope: !569)
!610 = !DILocation(line: 1906, column: 36, scope: !569)
!611 = !DILocation(line: 1907, column: 36, scope: !569)
!612 = !DILocation(line: 1907, column: 46, scope: !569)
!613 = !DILocation(line: 1907, column: 50, scope: !569)
!614 = !DILocation(line: 1906, column: 26, scope: !569)
!615 = !DILocation(line: 1908, column: 34, scope: !569)
!616 = !DILocation(line: 1908, column: 26, scope: !569)
!617 = !DILocation(line: 1909, column: 26, scope: !569)
!618 = !DILocation(line: 1912, column: 10, scope: !564)
!619 = !DILocation(line: 1881, column: 44, scope: !558)
!620 = !DILocation(line: 1881, column: 10, scope: !558)
!621 = distinct !{!621, !562, !622, !424}
!622 = !DILocation(line: 1912, column: 10, scope: !554)
!623 = !DILocation(line: 1913, column: 7, scope: !555)
!624 = !DILocation(line: 1914, column: 4, scope: !541)
!625 = !DILocation(line: 1878, column: 40, scope: !536)
!626 = !DILocation(line: 1878, column: 44, scope: !536)
!627 = !DILocation(line: 1878, column: 38, scope: !536)
!628 = !DILocation(line: 1878, column: 4, scope: !536)
!629 = distinct !{!629, !538, !630, !424}
!630 = !DILocation(line: 1914, column: 4, scope: !532)
!631 = !DILocation(line: 1917, column: 14, scope: !632)
!632 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1917, column: 4)
!633 = !DILocation(line: 1917, column: 12, scope: !632)
!634 = !DILocation(line: 1917, column: 9, scope: !632)
!635 = !DILocation(line: 1917, column: 23, scope: !636)
!636 = distinct !DILexicalBlock(scope: !632, file: !3, line: 1917, column: 4)
!637 = !DILocation(line: 1917, column: 26, scope: !636)
!638 = !DILocation(line: 1917, column: 4, scope: !632)
!639 = !DILocation(line: 1918, column: 11, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !3, line: 1918, column: 11)
!641 = distinct !DILexicalBlock(scope: !636, file: !3, line: 1917, column: 50)
!642 = !DILocation(line: 1918, column: 11, scope: !641)
!643 = !DILocation(line: 1918, column: 25, scope: !640)
!644 = !DILocation(line: 1919, column: 11, scope: !645)
!645 = distinct !DILexicalBlock(scope: !641, file: !3, line: 1919, column: 11)
!646 = !DILocation(line: 1919, column: 11, scope: !641)
!647 = !DILocation(line: 1919, column: 59, scope: !645)
!648 = !DILocation(line: 1919, column: 42, scope: !645)
!649 = !DILocation(line: 1920, column: 11, scope: !650)
!650 = distinct !DILexicalBlock(scope: !645, file: !3, line: 1920, column: 11)
!651 = !DILocation(line: 1920, column: 11, scope: !645)
!652 = !DILocation(line: 1920, column: 59, scope: !650)
!653 = !DILocation(line: 1920, column: 42, scope: !650)
!654 = !DILocation(line: 1921, column: 11, scope: !655)
!655 = distinct !DILexicalBlock(scope: !650, file: !3, line: 1921, column: 11)
!656 = !DILocation(line: 1921, column: 11, scope: !650)
!657 = !DILocation(line: 1921, column: 59, scope: !655)
!658 = !DILocation(line: 1921, column: 42, scope: !655)
!659 = !DILocation(line: 1922, column: 11, scope: !660)
!660 = distinct !DILexicalBlock(scope: !655, file: !3, line: 1922, column: 11)
!661 = !DILocation(line: 1922, column: 11, scope: !655)
!662 = !DILocation(line: 1922, column: 59, scope: !660)
!663 = !DILocation(line: 1922, column: 42, scope: !660)
!664 = !DILocation(line: 1923, column: 11, scope: !665)
!665 = distinct !DILexicalBlock(scope: !660, file: !3, line: 1923, column: 11)
!666 = !DILocation(line: 1923, column: 11, scope: !660)
!667 = !DILocation(line: 1923, column: 59, scope: !665)
!668 = !DILocation(line: 1923, column: 42, scope: !665)
!669 = !DILocation(line: 1924, column: 11, scope: !670)
!670 = distinct !DILexicalBlock(scope: !665, file: !3, line: 1924, column: 11)
!671 = !DILocation(line: 1924, column: 11, scope: !665)
!672 = !DILocation(line: 1924, column: 59, scope: !670)
!673 = !DILocation(line: 1924, column: 42, scope: !670)
!674 = !DILocation(line: 1925, column: 11, scope: !675)
!675 = distinct !DILexicalBlock(scope: !670, file: !3, line: 1925, column: 11)
!676 = !DILocation(line: 1925, column: 11, scope: !670)
!677 = !DILocation(line: 1925, column: 59, scope: !675)
!678 = !DILocation(line: 1925, column: 42, scope: !675)
!679 = !DILocation(line: 1926, column: 11, scope: !680)
!680 = distinct !DILexicalBlock(scope: !675, file: !3, line: 1926, column: 11)
!681 = !DILocation(line: 1926, column: 11, scope: !675)
!682 = !DILocation(line: 1926, column: 59, scope: !680)
!683 = !DILocation(line: 1926, column: 42, scope: !680)
!684 = !DILocation(line: 1927, column: 11, scope: !685)
!685 = distinct !DILexicalBlock(scope: !680, file: !3, line: 1927, column: 11)
!686 = !DILocation(line: 1927, column: 11, scope: !680)
!687 = !DILocation(line: 1927, column: 42, scope: !685)
!688 = !DILocation(line: 1928, column: 11, scope: !689)
!689 = distinct !DILexicalBlock(scope: !685, file: !3, line: 1928, column: 11)
!690 = !DILocation(line: 1928, column: 11, scope: !685)
!691 = !DILocation(line: 1928, column: 42, scope: !689)
!692 = !DILocation(line: 1929, column: 11, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !3, line: 1929, column: 11)
!694 = !DILocation(line: 1929, column: 11, scope: !689)
!695 = !DILocation(line: 1929, column: 53, scope: !693)
!696 = !DILocation(line: 1929, column: 42, scope: !693)
!697 = !DILocation(line: 1930, column: 11, scope: !698)
!698 = distinct !DILexicalBlock(scope: !693, file: !3, line: 1930, column: 11)
!699 = !DILocation(line: 1930, column: 11, scope: !693)
!700 = !DILocation(line: 1930, column: 52, scope: !698)
!701 = !DILocation(line: 1930, column: 56, scope: !698)
!702 = !DILocation(line: 1930, column: 42, scope: !698)
!703 = !DILocation(line: 1931, column: 11, scope: !704)
!704 = distinct !DILexicalBlock(scope: !698, file: !3, line: 1931, column: 11)
!705 = !DILocation(line: 1931, column: 11, scope: !698)
!706 = !DILocation(line: 1931, column: 52, scope: !704)
!707 = !DILocation(line: 1931, column: 56, scope: !704)
!708 = !DILocation(line: 1931, column: 42, scope: !704)
!709 = !DILocation(line: 1932, column: 11, scope: !710)
!710 = distinct !DILexicalBlock(scope: !704, file: !3, line: 1932, column: 11)
!711 = !DILocation(line: 1932, column: 11, scope: !704)
!712 = !DILocation(line: 1932, column: 56, scope: !710)
!713 = !DILocation(line: 1932, column: 42, scope: !710)
!714 = !DILocation(line: 1933, column: 11, scope: !715)
!715 = distinct !DILexicalBlock(scope: !710, file: !3, line: 1933, column: 11)
!716 = !DILocation(line: 1933, column: 11, scope: !710)
!717 = !DILocation(line: 1933, column: 56, scope: !715)
!718 = !DILocation(line: 1933, column: 42, scope: !715)
!719 = !DILocation(line: 1934, column: 11, scope: !720)
!720 = distinct !DILexicalBlock(scope: !715, file: !3, line: 1934, column: 11)
!721 = !DILocation(line: 1934, column: 11, scope: !715)
!722 = !DILocation(line: 1934, column: 51, scope: !720)
!723 = !DILocation(line: 1934, column: 42, scope: !720)
!724 = !DILocation(line: 1935, column: 11, scope: !725)
!725 = distinct !DILexicalBlock(scope: !720, file: !3, line: 1935, column: 11)
!726 = !DILocation(line: 1935, column: 11, scope: !720)
!727 = !DILocation(line: 1935, column: 52, scope: !728)
!728 = distinct !DILexicalBlock(scope: !725, file: !3, line: 1935, column: 42)
!729 = !DILocation(line: 1935, column: 44, scope: !728)
!730 = !DILocation(line: 1935, column: 64, scope: !728)
!731 = !DILocation(line: 1937, column: 24, scope: !732)
!732 = distinct !DILexicalBlock(scope: !725, file: !3, line: 1937, column: 14)
!733 = !DILocation(line: 1937, column: 28, scope: !732)
!734 = !DILocation(line: 1937, column: 14, scope: !732)
!735 = !DILocation(line: 1937, column: 43, scope: !732)
!736 = !DILocation(line: 1937, column: 14, scope: !725)
!737 = !DILocation(line: 1938, column: 23, scope: !738)
!738 = distinct !DILexicalBlock(scope: !732, file: !3, line: 1937, column: 49)
!739 = !DILocation(line: 1938, column: 54, scope: !738)
!740 = !DILocation(line: 1938, column: 64, scope: !738)
!741 = !DILocation(line: 1938, column: 68, scope: !738)
!742 = !DILocation(line: 1938, column: 13, scope: !738)
!743 = !DILocation(line: 1939, column: 21, scope: !738)
!744 = !DILocation(line: 1939, column: 13, scope: !738)
!745 = !DILocation(line: 1940, column: 13, scope: !738)
!746 = !DILocation(line: 1942, column: 4, scope: !641)
!747 = !DILocation(line: 1917, column: 40, scope: !636)
!748 = !DILocation(line: 1917, column: 44, scope: !636)
!749 = !DILocation(line: 1917, column: 38, scope: !636)
!750 = !DILocation(line: 1917, column: 4, scope: !636)
!751 = distinct !{!751, !638, !752, !424}
!752 = !DILocation(line: 1942, column: 4, scope: !632)
!753 = !DILocation(line: 1944, column: 8, scope: !754)
!754 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1944, column: 8)
!755 = !DILocation(line: 1944, column: 18, scope: !754)
!756 = !DILocation(line: 1944, column: 8, scope: !358)
!757 = !DILocation(line: 1944, column: 33, scope: !754)
!758 = !DILocation(line: 1944, column: 23, scope: !754)
!759 = !DILocation(line: 1945, column: 8, scope: !760)
!760 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1945, column: 8)
!761 = !DILocation(line: 1945, column: 15, scope: !760)
!762 = !DILocation(line: 1945, column: 23, scope: !760)
!763 = !DILocation(line: 1945, column: 26, scope: !760)
!764 = !DILocation(line: 1945, column: 36, scope: !760)
!765 = !DILocation(line: 1945, column: 39, scope: !760)
!766 = !DILocation(line: 1945, column: 53, scope: !760)
!767 = !DILocation(line: 1945, column: 8, scope: !358)
!768 = !DILocation(line: 1946, column: 21, scope: !760)
!769 = !DILocation(line: 1946, column: 7, scope: !760)
!770 = !DILocation(line: 1948, column: 8, scope: !771)
!771 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1948, column: 8)
!772 = !DILocation(line: 1948, column: 15, scope: !771)
!773 = !DILocation(line: 1948, column: 26, scope: !771)
!774 = !DILocation(line: 1948, column: 29, scope: !771)
!775 = !DILocation(line: 1948, column: 37, scope: !771)
!776 = !DILocation(line: 1948, column: 8, scope: !358)
!777 = !DILocation(line: 1949, column: 17, scope: !778)
!778 = distinct !DILexicalBlock(scope: !771, file: !3, line: 1948, column: 48)
!779 = !DILocation(line: 1950, column: 17, scope: !778)
!780 = !DILocation(line: 1949, column: 7, scope: !778)
!781 = !DILocation(line: 1951, column: 7, scope: !778)
!782 = !DILocation(line: 1954, column: 8, scope: !783)
!783 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1954, column: 8)
!784 = !DILocation(line: 1954, column: 16, scope: !783)
!785 = !DILocation(line: 1954, column: 26, scope: !783)
!786 = !DILocation(line: 1954, column: 29, scope: !783)
!787 = !DILocation(line: 1954, column: 42, scope: !783)
!788 = !DILocation(line: 1954, column: 8, scope: !358)
!789 = !DILocation(line: 1955, column: 15, scope: !783)
!790 = !DILocation(line: 1955, column: 7, scope: !783)
!791 = !DILocation(line: 1957, column: 8, scope: !792)
!792 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1957, column: 8)
!793 = !DILocation(line: 1957, column: 15, scope: !792)
!794 = !DILocation(line: 1957, column: 8, scope: !358)
!795 = !DILocation(line: 1957, column: 38, scope: !792)
!796 = !DILocation(line: 1957, column: 24, scope: !792)
!797 = !DILocation(line: 1959, column: 8, scope: !798)
!798 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1959, column: 8)
!799 = !DILocation(line: 1959, column: 16, scope: !798)
!800 = !DILocation(line: 1959, column: 8, scope: !358)
!801 = !DILocation(line: 1960, column: 7, scope: !802)
!802 = distinct !DILexicalBlock(scope: !798, file: !3, line: 1959, column: 27)
!803 = !DILocation(line: 1961, column: 7, scope: !802)
!804 = !DILocation(line: 1963, column: 7, scope: !802)
!805 = !DILocation(line: 1965, column: 4, scope: !802)
!806 = !DILocation(line: 1967, column: 8, scope: !807)
!807 = distinct !DILexicalBlock(scope: !358, file: !3, line: 1967, column: 8)
!808 = !DILocation(line: 1967, column: 15, scope: !807)
!809 = !DILocation(line: 1967, column: 8, scope: !358)
!810 = !DILocation(line: 1968, column: 10, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 1968, column: 10)
!812 = distinct !DILexicalBlock(scope: !807, file: !3, line: 1967, column: 24)
!813 = !DILocation(line: 1968, column: 18, scope: !811)
!814 = !DILocation(line: 1968, column: 10, scope: !812)
!815 = !DILocation(line: 1969, column: 9, scope: !816)
!816 = distinct !DILexicalBlock(scope: !811, file: !3, line: 1968, column: 29)
!817 = !DILocation(line: 1970, column: 6, scope: !816)
!818 = !DILocation(line: 1971, column: 16, scope: !819)
!819 = distinct !DILexicalBlock(scope: !811, file: !3, line: 1970, column: 13)
!820 = !DILocation(line: 1972, column: 19, scope: !821)
!821 = distinct !DILexicalBlock(scope: !819, file: !3, line: 1972, column: 9)
!822 = !DILocation(line: 1972, column: 17, scope: !821)
!823 = !DILocation(line: 1972, column: 14, scope: !821)
!824 = !DILocation(line: 1972, column: 28, scope: !825)
!825 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1972, column: 9)
!826 = !DILocation(line: 1972, column: 31, scope: !825)
!827 = !DILocation(line: 1972, column: 9, scope: !821)
!828 = !DILocation(line: 1973, column: 16, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !3, line: 1973, column: 16)
!830 = distinct !DILexicalBlock(scope: !825, file: !3, line: 1972, column: 55)
!831 = !DILocation(line: 1973, column: 16, scope: !830)
!832 = !DILocation(line: 1973, column: 39, scope: !833)
!833 = distinct !DILexicalBlock(scope: !829, file: !3, line: 1973, column: 30)
!834 = !DILocation(line: 1973, column: 48, scope: !833)
!835 = !DILocation(line: 1974, column: 16, scope: !836)
!836 = distinct !DILexicalBlock(scope: !830, file: !3, line: 1974, column: 16)
!837 = !DILocation(line: 1974, column: 20, scope: !836)
!838 = !DILocation(line: 1974, column: 28, scope: !836)
!839 = !DILocation(line: 1974, column: 35, scope: !836)
!840 = !DILocation(line: 1974, column: 38, scope: !836)
!841 = !DILocation(line: 1974, column: 16, scope: !830)
!842 = !DILocation(line: 1974, column: 46, scope: !836)
!843 = !DILocation(line: 1975, column: 29, scope: !830)
!844 = !DILocation(line: 1976, column: 23, scope: !830)
!845 = !DILocation(line: 1976, column: 27, scope: !830)
!846 = !DILocation(line: 1976, column: 12, scope: !830)
!847 = !DILocation(line: 1977, column: 9, scope: !830)
!848 = !DILocation(line: 1972, column: 45, scope: !825)
!849 = !DILocation(line: 1972, column: 49, scope: !825)
!850 = !DILocation(line: 1972, column: 43, scope: !825)
!851 = !DILocation(line: 1972, column: 9, scope: !825)
!852 = distinct !{!852, !827, !853, !424}
!853 = !DILocation(line: 1977, column: 9, scope: !821)
!854 = !DILocation(line: 1979, column: 4, scope: !812)
!855 = !DILocation(line: 1982, column: 8, scope: !856)
!856 = distinct !DILexicalBlock(scope: !807, file: !3, line: 1982, column: 8)
!857 = !DILocation(line: 1982, column: 15, scope: !856)
!858 = !DILocation(line: 1982, column: 8, scope: !807)
!859 = !DILocation(line: 1983, column: 21, scope: !860)
!860 = distinct !DILexicalBlock(scope: !856, file: !3, line: 1982, column: 26)
!861 = !DILocation(line: 1984, column: 11, scope: !862)
!862 = distinct !DILexicalBlock(scope: !860, file: !3, line: 1984, column: 11)
!863 = !DILocation(line: 1984, column: 19, scope: !862)
!864 = !DILocation(line: 1984, column: 11, scope: !860)
!865 = !DILocation(line: 1985, column: 10, scope: !866)
!866 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1984, column: 30)
!867 = !DILocation(line: 1986, column: 7, scope: !866)
!868 = !DILocation(line: 1987, column: 17, scope: !869)
!869 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1986, column: 14)
!870 = !DILocation(line: 1988, column: 20, scope: !871)
!871 = distinct !DILexicalBlock(scope: !869, file: !3, line: 1988, column: 10)
!872 = !DILocation(line: 1988, column: 18, scope: !871)
!873 = !DILocation(line: 1988, column: 15, scope: !871)
!874 = !DILocation(line: 1988, column: 29, scope: !875)
!875 = distinct !DILexicalBlock(scope: !871, file: !3, line: 1988, column: 10)
!876 = !DILocation(line: 1988, column: 32, scope: !875)
!877 = !DILocation(line: 1988, column: 10, scope: !871)
!878 = !DILocation(line: 1989, column: 17, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 1989, column: 17)
!880 = distinct !DILexicalBlock(scope: !875, file: !3, line: 1988, column: 56)
!881 = !DILocation(line: 1989, column: 17, scope: !880)
!882 = !DILocation(line: 1989, column: 40, scope: !883)
!883 = distinct !DILexicalBlock(scope: !879, file: !3, line: 1989, column: 31)
!884 = !DILocation(line: 1989, column: 49, scope: !883)
!885 = !DILocation(line: 1990, column: 17, scope: !886)
!886 = distinct !DILexicalBlock(scope: !880, file: !3, line: 1990, column: 17)
!887 = !DILocation(line: 1990, column: 21, scope: !886)
!888 = !DILocation(line: 1990, column: 29, scope: !886)
!889 = !DILocation(line: 1990, column: 36, scope: !886)
!890 = !DILocation(line: 1990, column: 39, scope: !886)
!891 = !DILocation(line: 1990, column: 17, scope: !880)
!892 = !DILocation(line: 1990, column: 47, scope: !886)
!893 = !DILocation(line: 1991, column: 30, scope: !880)
!894 = !DILocation(line: 1992, column: 26, scope: !880)
!895 = !DILocation(line: 1992, column: 30, scope: !880)
!896 = !DILocation(line: 1992, column: 13, scope: !880)
!897 = !DILocation(line: 1993, column: 10, scope: !880)
!898 = !DILocation(line: 1988, column: 46, scope: !875)
!899 = !DILocation(line: 1988, column: 50, scope: !875)
!900 = !DILocation(line: 1988, column: 44, scope: !875)
!901 = !DILocation(line: 1988, column: 10, scope: !875)
!902 = distinct !{!902, !877, !903, !424}
!903 = !DILocation(line: 1993, column: 10, scope: !871)
!904 = !DILocation(line: 1995, column: 11, scope: !905)
!905 = distinct !DILexicalBlock(scope: !860, file: !3, line: 1995, column: 11)
!906 = !DILocation(line: 1995, column: 11, scope: !860)
!907 = !DILocation(line: 1996, column: 10, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1995, column: 26)
!909 = !DILocation(line: 1997, column: 15, scope: !908)
!910 = !DILocation(line: 1997, column: 10, scope: !908)
!911 = !DILocation(line: 1999, column: 4, scope: !860)
!912 = !DILocation(line: 2002, column: 22, scope: !913)
!913 = distinct !DILexicalBlock(scope: !856, file: !3, line: 2001, column: 9)
!914 = !DILocation(line: 2003, column: 11, scope: !915)
!915 = distinct !DILexicalBlock(scope: !913, file: !3, line: 2003, column: 11)
!916 = !DILocation(line: 2003, column: 19, scope: !915)
!917 = !DILocation(line: 2003, column: 11, scope: !913)
!918 = !DILocation(line: 2004, column: 10, scope: !919)
!919 = distinct !DILexicalBlock(scope: !915, file: !3, line: 2003, column: 30)
!920 = !DILocation(line: 2005, column: 7, scope: !919)
!921 = !DILocation(line: 2006, column: 17, scope: !922)
!922 = distinct !DILexicalBlock(scope: !915, file: !3, line: 2005, column: 14)
!923 = !DILocation(line: 2007, column: 20, scope: !924)
!924 = distinct !DILexicalBlock(scope: !922, file: !3, line: 2007, column: 10)
!925 = !DILocation(line: 2007, column: 18, scope: !924)
!926 = !DILocation(line: 2007, column: 15, scope: !924)
!927 = !DILocation(line: 2007, column: 29, scope: !928)
!928 = distinct !DILexicalBlock(scope: !924, file: !3, line: 2007, column: 10)
!929 = !DILocation(line: 2007, column: 32, scope: !928)
!930 = !DILocation(line: 2007, column: 10, scope: !924)
!931 = !DILocation(line: 2008, column: 10, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !3, line: 2008, column: 10)
!933 = distinct !DILexicalBlock(scope: !928, file: !3, line: 2007, column: 56)
!934 = !DILocation(line: 2008, column: 10, scope: !933)
!935 = !DILocation(line: 2008, column: 33, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !3, line: 2008, column: 24)
!937 = !DILocation(line: 2008, column: 42, scope: !936)
!938 = !DILocation(line: 2009, column: 17, scope: !939)
!939 = distinct !DILexicalBlock(scope: !933, file: !3, line: 2009, column: 17)
!940 = !DILocation(line: 2009, column: 21, scope: !939)
!941 = !DILocation(line: 2009, column: 29, scope: !939)
!942 = !DILocation(line: 2009, column: 36, scope: !939)
!943 = !DILocation(line: 2009, column: 39, scope: !939)
!944 = !DILocation(line: 2009, column: 17, scope: !933)
!945 = !DILocation(line: 2009, column: 47, scope: !939)
!946 = !DILocation(line: 2010, column: 30, scope: !933)
!947 = !DILocation(line: 2011, column: 21, scope: !933)
!948 = !DILocation(line: 2011, column: 25, scope: !933)
!949 = !DILocation(line: 2011, column: 13, scope: !933)
!950 = !DILocation(line: 2012, column: 3, scope: !933)
!951 = !DILocation(line: 2007, column: 46, scope: !928)
!952 = !DILocation(line: 2007, column: 50, scope: !928)
!953 = !DILocation(line: 2007, column: 44, scope: !928)
!954 = !DILocation(line: 2007, column: 10, scope: !928)
!955 = distinct !{!955, !930, !956, !424}
!956 = !DILocation(line: 2012, column: 3, scope: !924)
!957 = !DILocation(line: 2014, column: 11, scope: !958)
!958 = distinct !DILexicalBlock(scope: !913, file: !3, line: 2014, column: 11)
!959 = !DILocation(line: 2014, column: 11, scope: !913)
!960 = !DILocation(line: 2015, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !962, file: !3, line: 2015, column: 7)
!962 = distinct !DILexicalBlock(scope: !958, file: !3, line: 2014, column: 27)
!963 = !DILocation(line: 2015, column: 7, scope: !962)
!964 = !DILocation(line: 2016, column: 23, scope: !965)
!965 = distinct !DILexicalBlock(scope: !961, file: !3, line: 2015, column: 14)
!966 = !DILocation(line: 2016, column: 13, scope: !965)
!967 = !DILocation(line: 2021, column: 3, scope: !965)
!968 = !DILocation(line: 2022, column: 10, scope: !962)
!969 = !DILocation(line: 2023, column: 15, scope: !962)
!970 = !DILocation(line: 2023, column: 10, scope: !962)
!971 = !DILocation(line: 2030, column: 9, scope: !358)
!972 = !DILocation(line: 2030, column: 7, scope: !358)
!973 = !DILocation(line: 2031, column: 4, scope: !358)
!974 = !DILocation(line: 2031, column: 11, scope: !358)
!975 = !DILocation(line: 2031, column: 14, scope: !358)
!976 = !DILocalVariable(name: "aa2", scope: !977, file: !3, line: 2032, type: !14)
!977 = distinct !DILexicalBlock(scope: !358, file: !3, line: 2031, column: 23)
!978 = !DILocation(line: 2032, column: 13, scope: !977)
!979 = !DILocation(line: 2032, column: 19, scope: !977)
!980 = !DILocation(line: 2032, column: 23, scope: !977)
!981 = !DILocation(line: 2033, column: 11, scope: !982)
!982 = distinct !DILexicalBlock(scope: !977, file: !3, line: 2033, column: 11)
!983 = !DILocation(line: 2033, column: 15, scope: !982)
!984 = !DILocation(line: 2033, column: 20, scope: !982)
!985 = !DILocation(line: 2033, column: 11, scope: !977)
!986 = !DILocation(line: 2033, column: 34, scope: !982)
!987 = !DILocation(line: 2033, column: 38, scope: !982)
!988 = !DILocation(line: 2033, column: 29, scope: !982)
!989 = !DILocation(line: 2034, column: 12, scope: !977)
!990 = !DILocation(line: 2034, column: 7, scope: !977)
!991 = !DILocation(line: 2035, column: 12, scope: !977)
!992 = !DILocation(line: 2035, column: 10, scope: !977)
!993 = distinct !{!993, !973, !994, !424}
!994 = !DILocation(line: 2036, column: 4, scope: !358)
!995 = !DILocation(line: 2038, column: 11, scope: !358)
!996 = !DILocation(line: 2038, column: 4, scope: !358)
!997 = distinct !DISubprogram(name: "mySIGSEGVorSIGBUScatcher", scope: !3, file: !3, line: 816, type: !998, scopeLine: 817, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !361}
!1000 = !DILocalVariable(name: "n", arg: 1, scope: !997, file: !3, line: 816, type: !361)
!1001 = !DILocation(line: 816, column: 43, scope: !997)
!1002 = !DILocalVariable(name: "msg", scope: !997, file: !3, line: 818, type: !268)
!1003 = !DILocation(line: 818, column: 16, scope: !997)
!1004 = !DILocation(line: 819, column: 8, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !997, file: !3, line: 819, column: 8)
!1006 = !DILocation(line: 819, column: 15, scope: !1005)
!1007 = !DILocation(line: 819, column: 8, scope: !997)
!1008 = !DILocation(line: 820, column: 11, scope: !1005)
!1009 = !DILocation(line: 820, column: 7, scope: !1005)
!1010 = !DILocation(line: 838, column: 11, scope: !1005)
!1011 = !DILocation(line: 857, column: 4, scope: !997)
!1012 = !DILocation(line: 858, column: 27, scope: !997)
!1013 = !DILocation(line: 858, column: 46, scope: !997)
!1014 = !DILocation(line: 858, column: 37, scope: !997)
!1015 = !DILocation(line: 858, column: 4, scope: !997)
!1016 = !DILocation(line: 859, column: 27, scope: !997)
!1017 = !DILocation(line: 859, column: 41, scope: !997)
!1018 = !DILocation(line: 859, column: 32, scope: !997)
!1019 = !DILocation(line: 859, column: 4, scope: !997)
!1020 = !DILocation(line: 861, column: 8, scope: !997)
!1021 = !DILocation(line: 862, column: 27, scope: !997)
!1022 = !DILocation(line: 862, column: 40, scope: !997)
!1023 = !DILocation(line: 862, column: 32, scope: !997)
!1024 = !DILocation(line: 862, column: 4, scope: !997)
!1025 = !DILocation(line: 863, column: 35, scope: !997)
!1026 = !DILocation(line: 863, column: 4, scope: !997)
!1027 = !DILocation(line: 864, column: 4, scope: !997)
!1028 = !DILocation(line: 865, column: 8, scope: !997)
!1029 = !DILocation(line: 866, column: 27, scope: !997)
!1030 = !DILocation(line: 866, column: 40, scope: !997)
!1031 = !DILocation(line: 866, column: 32, scope: !997)
!1032 = !DILocation(line: 866, column: 4, scope: !997)
!1033 = !DILocation(line: 867, column: 36, scope: !997)
!1034 = !DILocation(line: 867, column: 4, scope: !997)
!1035 = !DILocation(line: 868, column: 4, scope: !997)
!1036 = !DILocation(line: 873, column: 8, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !997, file: !3, line: 873, column: 8)
!1038 = !DILocation(line: 873, column: 15, scope: !1037)
!1039 = !DILocation(line: 873, column: 8, scope: !997)
!1040 = !DILocation(line: 873, column: 24, scope: !1037)
!1041 = !DILocation(line: 873, column: 41, scope: !1037)
!1042 = !DILocation(line: 874, column: 10, scope: !997)
!1043 = !DILocation(line: 874, column: 4, scope: !997)
!1044 = distinct !DISubprogram(name: "copyFileName", scope: !3, file: !3, line: 927, type: !1045, scopeLine: 928, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{null, !8, !8}
!1047 = !DILocalVariable(name: "to", arg: 1, scope: !1044, file: !3, line: 927, type: !8)
!1048 = !DILocation(line: 927, column: 27, scope: !1044)
!1049 = !DILocalVariable(name: "from", arg: 2, scope: !1044, file: !3, line: 927, type: !8)
!1050 = !DILocation(line: 927, column: 37, scope: !1044)
!1051 = !DILocation(line: 929, column: 16, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 929, column: 9)
!1053 = !DILocation(line: 929, column: 9, scope: !1052)
!1054 = !DILocation(line: 929, column: 22, scope: !1052)
!1055 = !DILocation(line: 929, column: 9, scope: !1044)
!1056 = !DILocation(line: 931, column: 10, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 929, column: 44)
!1058 = !DILocation(line: 935, column: 10, scope: !1057)
!1059 = !DILocation(line: 930, column: 7, scope: !1057)
!1060 = !DILocation(line: 937, column: 7, scope: !1057)
!1061 = !DILocation(line: 938, column: 12, scope: !1057)
!1062 = !DILocation(line: 938, column: 7, scope: !1057)
!1063 = !DILocation(line: 941, column: 11, scope: !1044)
!1064 = !DILocation(line: 941, column: 14, scope: !1044)
!1065 = !DILocation(line: 941, column: 3, scope: !1044)
!1066 = !DILocation(line: 942, column: 3, scope: !1044)
!1067 = !DILocation(line: 942, column: 23, scope: !1044)
!1068 = !DILocation(line: 943, column: 1, scope: !1044)
!1069 = distinct !DISubprogram(name: "addFlagsFromEnvVar", scope: !3, file: !3, line: 1755, type: !1070, scopeLine: 1756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{null, !1072, !8}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!1073 = !DILocalVariable(name: "argList", arg: 1, scope: !1069, file: !3, line: 1755, type: !1072)
!1074 = !DILocation(line: 1755, column: 34, scope: !1069)
!1075 = !DILocalVariable(name: "varName", arg: 2, scope: !1069, file: !3, line: 1755, type: !8)
!1076 = !DILocation(line: 1755, column: 49, scope: !1069)
!1077 = !DILocalVariable(name: "i", scope: !1069, file: !3, line: 1757, type: !12)
!1078 = !DILocation(line: 1757, column: 10, scope: !1069)
!1079 = !DILocalVariable(name: "j", scope: !1069, file: !3, line: 1757, type: !12)
!1080 = !DILocation(line: 1757, column: 13, scope: !1069)
!1081 = !DILocalVariable(name: "k", scope: !1069, file: !3, line: 1757, type: !12)
!1082 = !DILocation(line: 1757, column: 16, scope: !1069)
!1083 = !DILocalVariable(name: "envbase", scope: !1069, file: !3, line: 1758, type: !8)
!1084 = !DILocation(line: 1758, column: 10, scope: !1069)
!1085 = !DILocalVariable(name: "p", scope: !1069, file: !3, line: 1758, type: !8)
!1086 = !DILocation(line: 1758, column: 20, scope: !1069)
!1087 = !DILocation(line: 1760, column: 21, scope: !1069)
!1088 = !DILocation(line: 1760, column: 14, scope: !1069)
!1089 = !DILocation(line: 1760, column: 12, scope: !1069)
!1090 = !DILocation(line: 1761, column: 8, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 1761, column: 8)
!1092 = !DILocation(line: 1761, column: 16, scope: !1091)
!1093 = !DILocation(line: 1761, column: 8, scope: !1069)
!1094 = !DILocation(line: 1762, column: 11, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 1761, column: 25)
!1096 = !DILocation(line: 1762, column: 9, scope: !1095)
!1097 = !DILocation(line: 1763, column: 9, scope: !1095)
!1098 = !DILocation(line: 1764, column: 7, scope: !1095)
!1099 = !DILocation(line: 1765, column: 14, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 1765, column: 14)
!1101 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 1764, column: 20)
!1102 = !DILocation(line: 1765, column: 16, scope: !1100)
!1103 = !DILocation(line: 1765, column: 19, scope: !1100)
!1104 = !DILocation(line: 1765, column: 14, scope: !1101)
!1105 = !DILocation(line: 1765, column: 25, scope: !1100)
!1106 = !DILocation(line: 1766, column: 15, scope: !1101)
!1107 = !DILocation(line: 1766, column: 12, scope: !1101)
!1108 = !DILocation(line: 1767, column: 12, scope: !1101)
!1109 = !DILocation(line: 1768, column: 10, scope: !1101)
!1110 = !DILocation(line: 1768, column: 17, scope: !1101)
!1111 = !DILocation(line: 1768, column: 42, scope: !1101)
!1112 = distinct !{!1112, !1109, !1111, !424}
!1113 = !DILocation(line: 1769, column: 10, scope: !1101)
!1114 = !DILocation(line: 1769, column: 17, scope: !1101)
!1115 = !DILocation(line: 1769, column: 19, scope: !1101)
!1116 = !DILocation(line: 1769, column: 22, scope: !1101)
!1117 = !DILocation(line: 1769, column: 27, scope: !1101)
!1118 = !DILocation(line: 1769, column: 31, scope: !1101)
!1119 = !DILocation(line: 1769, column: 30, scope: !1101)
!1120 = !DILocation(line: 0, scope: !1101)
!1121 = !DILocation(line: 1769, column: 56, scope: !1101)
!1122 = distinct !{!1122, !1113, !1121, !424}
!1123 = !DILocation(line: 1770, column: 14, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 1770, column: 14)
!1125 = !DILocation(line: 1770, column: 16, scope: !1124)
!1126 = !DILocation(line: 1770, column: 14, scope: !1101)
!1127 = !DILocation(line: 1771, column: 17, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 1770, column: 21)
!1129 = !DILocation(line: 1771, column: 15, scope: !1128)
!1130 = !DILocation(line: 1771, column: 24, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 1771, column: 24)
!1132 = !DILocation(line: 1771, column: 26, scope: !1131)
!1133 = !DILocation(line: 1771, column: 24, scope: !1128)
!1134 = !DILocation(line: 1771, column: 48, scope: !1131)
!1135 = !DILocation(line: 1771, column: 46, scope: !1131)
!1136 = !DILocation(line: 1772, column: 20, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 1772, column: 13)
!1138 = !DILocation(line: 1772, column: 18, scope: !1137)
!1139 = !DILocation(line: 1772, column: 25, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 1772, column: 13)
!1141 = !DILocation(line: 1772, column: 29, scope: !1140)
!1142 = !DILocation(line: 1772, column: 27, scope: !1140)
!1143 = !DILocation(line: 1772, column: 13, scope: !1137)
!1144 = !DILocation(line: 1772, column: 50, scope: !1140)
!1145 = !DILocation(line: 1772, column: 52, scope: !1140)
!1146 = !DILocation(line: 1772, column: 45, scope: !1140)
!1147 = !DILocation(line: 1772, column: 37, scope: !1140)
!1148 = !DILocation(line: 1772, column: 48, scope: !1140)
!1149 = !DILocation(line: 1772, column: 33, scope: !1140)
!1150 = !DILocation(line: 1772, column: 13, scope: !1140)
!1151 = distinct !{!1151, !1143, !1152, !424}
!1152 = !DILocation(line: 1772, column: 53, scope: !1137)
!1153 = !DILocation(line: 1773, column: 21, scope: !1128)
!1154 = !DILocation(line: 1773, column: 13, scope: !1128)
!1155 = !DILocation(line: 1773, column: 24, scope: !1128)
!1156 = !DILocation(line: 1774, column: 13, scope: !1128)
!1157 = !DILocation(line: 1775, column: 10, scope: !1128)
!1158 = distinct !{!1158, !1098, !1159}
!1159 = !DILocation(line: 1776, column: 7, scope: !1095)
!1160 = !DILocation(line: 1777, column: 4, scope: !1095)
!1161 = !DILocation(line: 1778, column: 1, scope: !1069)
!1162 = distinct !DISubprogram(name: "snocString", scope: !3, file: !3, line: 1737, type: !1163, scopeLine: 1738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!14, !14, !8}
!1165 = !DILocalVariable(name: "root", arg: 1, scope: !1162, file: !3, line: 1737, type: !14)
!1166 = !DILocation(line: 1737, column: 26, scope: !1162)
!1167 = !DILocalVariable(name: "name", arg: 2, scope: !1162, file: !3, line: 1737, type: !8)
!1168 = !DILocation(line: 1737, column: 38, scope: !1162)
!1169 = !DILocation(line: 1739, column: 8, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 1739, column: 8)
!1171 = !DILocation(line: 1739, column: 13, scope: !1170)
!1172 = !DILocation(line: 1739, column: 8, scope: !1162)
!1173 = !DILocalVariable(name: "tmp", scope: !1174, file: !3, line: 1740, type: !14)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 1739, column: 22)
!1175 = !DILocation(line: 1740, column: 13, scope: !1174)
!1176 = !DILocation(line: 1740, column: 19, scope: !1174)
!1177 = !DILocation(line: 1741, column: 49, scope: !1174)
!1178 = !DILocation(line: 1741, column: 42, scope: !1174)
!1179 = !DILocation(line: 1741, column: 40, scope: !1174)
!1180 = !DILocation(line: 1741, column: 27, scope: !1174)
!1181 = !DILocation(line: 1741, column: 7, scope: !1174)
!1182 = !DILocation(line: 1741, column: 12, scope: !1174)
!1183 = !DILocation(line: 1741, column: 17, scope: !1174)
!1184 = !DILocation(line: 1742, column: 16, scope: !1174)
!1185 = !DILocation(line: 1742, column: 21, scope: !1174)
!1186 = !DILocation(line: 1742, column: 27, scope: !1174)
!1187 = !DILocation(line: 1742, column: 7, scope: !1174)
!1188 = !DILocation(line: 1743, column: 14, scope: !1174)
!1189 = !DILocation(line: 1743, column: 7, scope: !1174)
!1190 = !DILocalVariable(name: "tmp", scope: !1191, file: !3, line: 1745, type: !14)
!1191 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 1744, column: 11)
!1192 = !DILocation(line: 1745, column: 13, scope: !1191)
!1193 = !DILocation(line: 1745, column: 19, scope: !1191)
!1194 = !DILocation(line: 1746, column: 7, scope: !1191)
!1195 = !DILocation(line: 1746, column: 14, scope: !1191)
!1196 = !DILocation(line: 1746, column: 19, scope: !1191)
!1197 = !DILocation(line: 1746, column: 24, scope: !1191)
!1198 = !DILocation(line: 1746, column: 39, scope: !1191)
!1199 = !DILocation(line: 1746, column: 44, scope: !1191)
!1200 = !DILocation(line: 1746, column: 37, scope: !1191)
!1201 = distinct !{!1201, !1194, !1199, !424}
!1202 = !DILocation(line: 1747, column: 32, scope: !1191)
!1203 = !DILocation(line: 1747, column: 37, scope: !1191)
!1204 = !DILocation(line: 1747, column: 43, scope: !1191)
!1205 = !DILocation(line: 1747, column: 19, scope: !1191)
!1206 = !DILocation(line: 1747, column: 7, scope: !1191)
!1207 = !DILocation(line: 1747, column: 12, scope: !1191)
!1208 = !DILocation(line: 1747, column: 17, scope: !1191)
!1209 = !DILocation(line: 1748, column: 14, scope: !1191)
!1210 = !DILocation(line: 1748, column: 7, scope: !1191)
!1211 = !DILocation(line: 1750, column: 1, scope: !1162)
!1212 = distinct !DISubprogram(name: "license", scope: !3, file: !3, line: 1609, type: !237, scopeLine: 1610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1213 = !DILocation(line: 1611, column: 14, scope: !1212)
!1214 = !DILocation(line: 1627, column: 5, scope: !1212)
!1215 = !DILocation(line: 1611, column: 4, scope: !1212)
!1216 = !DILocation(line: 1629, column: 1, scope: !1212)
!1217 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 1634, type: !1218, scopeLine: 1635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !8}
!1220 = !DILocalVariable(name: "fullProgName", arg: 1, scope: !1217, file: !3, line: 1634, type: !8)
!1221 = !DILocation(line: 1634, column: 20, scope: !1217)
!1222 = !DILocation(line: 1637, column: 7, scope: !1217)
!1223 = !DILocation(line: 1670, column: 7, scope: !1217)
!1224 = !DILocation(line: 1671, column: 7, scope: !1217)
!1225 = !DILocation(line: 1636, column: 4, scope: !1217)
!1226 = !DILocation(line: 1673, column: 1, scope: !1217)
!1227 = distinct !DISubprogram(name: "redundant", scope: !3, file: !3, line: 1678, type: !1218, scopeLine: 1679, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1228 = !DILocalVariable(name: "flag", arg: 1, scope: !1227, file: !3, line: 1678, type: !8)
!1229 = !DILocation(line: 1678, column: 24, scope: !1227)
!1230 = !DILocation(line: 1681, column: 7, scope: !1227)
!1231 = !DILocation(line: 1683, column: 7, scope: !1227)
!1232 = !DILocation(line: 1683, column: 17, scope: !1227)
!1233 = !DILocation(line: 1680, column: 4, scope: !1227)
!1234 = !DILocation(line: 1684, column: 1, scope: !1227)
!1235 = distinct !DISubprogram(name: "mySignalCatcher", scope: !3, file: !3, line: 805, type: !998, scopeLine: 806, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1236 = !DILocalVariable(name: "n", arg: 1, scope: !1235, file: !3, line: 805, type: !361)
!1237 = !DILocation(line: 805, column: 34, scope: !1235)
!1238 = !DILocation(line: 807, column: 14, scope: !1235)
!1239 = !DILocation(line: 809, column: 14, scope: !1235)
!1240 = !DILocation(line: 807, column: 4, scope: !1235)
!1241 = !DILocation(line: 810, column: 4, scope: !1235)
!1242 = distinct !DISubprogram(name: "compress", scope: !3, file: !3, line: 1141, type: !1218, scopeLine: 1142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1243 = !DILocalVariable(name: "name", arg: 1, scope: !1242, file: !3, line: 1141, type: !8)
!1244 = !DILocation(line: 1141, column: 23, scope: !1242)
!1245 = !DILocalVariable(name: "inStr", scope: !1242, file: !3, line: 1143, type: !82)
!1246 = !DILocation(line: 1143, column: 11, scope: !1242)
!1247 = !DILocalVariable(name: "outStr", scope: !1242, file: !3, line: 1144, type: !82)
!1248 = !DILocation(line: 1144, column: 11, scope: !1242)
!1249 = !DILocalVariable(name: "n", scope: !1242, file: !3, line: 1145, type: !12)
!1250 = !DILocation(line: 1145, column: 10, scope: !1242)
!1251 = !DILocalVariable(name: "i", scope: !1242, file: !3, line: 1145, type: !12)
!1252 = !DILocation(line: 1145, column: 13, scope: !1242)
!1253 = !DILocalVariable(name: "statBuf", scope: !1242, file: !3, line: 1146, type: !302)
!1254 = !DILocation(line: 1146, column: 19, scope: !1242)
!1255 = !DILocation(line: 1148, column: 28, scope: !1242)
!1256 = !DILocation(line: 1150, column: 8, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1150, column: 8)
!1258 = !DILocation(line: 1150, column: 13, scope: !1257)
!1259 = !DILocation(line: 1150, column: 21, scope: !1257)
!1260 = !DILocation(line: 1150, column: 24, scope: !1257)
!1261 = !DILocation(line: 1150, column: 32, scope: !1257)
!1262 = !DILocation(line: 1150, column: 8, scope: !1242)
!1263 = !DILocation(line: 1151, column: 7, scope: !1257)
!1264 = !DILocation(line: 1153, column: 12, scope: !1242)
!1265 = !DILocation(line: 1153, column: 4, scope: !1242)
!1266 = !DILocation(line: 1155, column: 10, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1153, column: 21)
!1268 = !DILocation(line: 1156, column: 10, scope: !1267)
!1269 = !DILocation(line: 1157, column: 10, scope: !1267)
!1270 = !DILocation(line: 1159, column: 33, scope: !1267)
!1271 = !DILocation(line: 1159, column: 10, scope: !1267)
!1272 = !DILocation(line: 1160, column: 34, scope: !1267)
!1273 = !DILocation(line: 1160, column: 10, scope: !1267)
!1274 = !DILocation(line: 1161, column: 10, scope: !1267)
!1275 = !DILocation(line: 1162, column: 10, scope: !1267)
!1276 = !DILocation(line: 1164, column: 33, scope: !1267)
!1277 = !DILocation(line: 1164, column: 10, scope: !1267)
!1278 = !DILocation(line: 1165, column: 10, scope: !1267)
!1279 = !DILocation(line: 1166, column: 10, scope: !1267)
!1280 = !DILocation(line: 1169, column: 9, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1169, column: 9)
!1282 = !DILocation(line: 1169, column: 17, scope: !1281)
!1283 = !DILocation(line: 1169, column: 27, scope: !1281)
!1284 = !DILocation(line: 1169, column: 30, scope: !1281)
!1285 = !DILocation(line: 1169, column: 9, scope: !1242)
!1286 = !DILocation(line: 1170, column: 11, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 1170, column: 11)
!1288 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 1169, column: 64)
!1289 = !DILocation(line: 1170, column: 11, scope: !1288)
!1290 = !DILocation(line: 1171, column: 17, scope: !1287)
!1291 = !DILocation(line: 1172, column: 17, scope: !1287)
!1292 = !DILocation(line: 1171, column: 7, scope: !1287)
!1293 = !DILocation(line: 1173, column: 7, scope: !1288)
!1294 = !DILocation(line: 1174, column: 7, scope: !1288)
!1295 = !DILocation(line: 1176, column: 9, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1176, column: 9)
!1297 = !DILocation(line: 1176, column: 17, scope: !1296)
!1298 = !DILocation(line: 1176, column: 27, scope: !1296)
!1299 = !DILocation(line: 1176, column: 31, scope: !1296)
!1300 = !DILocation(line: 1176, column: 9, scope: !1242)
!1301 = !DILocation(line: 1177, column: 17, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 1176, column: 55)
!1303 = !DILocation(line: 1178, column: 17, scope: !1302)
!1304 = !DILocation(line: 1178, column: 44, scope: !1302)
!1305 = !DILocation(line: 1178, column: 35, scope: !1302)
!1306 = !DILocation(line: 1177, column: 7, scope: !1302)
!1307 = !DILocation(line: 1179, column: 7, scope: !1302)
!1308 = !DILocation(line: 1180, column: 7, scope: !1302)
!1309 = !DILocation(line: 1182, column: 11, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1182, column: 4)
!1311 = !DILocation(line: 1182, column: 9, scope: !1310)
!1312 = !DILocation(line: 1182, column: 16, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 1182, column: 4)
!1314 = !DILocation(line: 1182, column: 18, scope: !1313)
!1315 = !DILocation(line: 1182, column: 4, scope: !1310)
!1316 = !DILocation(line: 1183, column: 37, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 1183, column: 11)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 1182, column: 44)
!1319 = !DILocation(line: 1183, column: 29, scope: !1317)
!1320 = !DILocation(line: 1183, column: 11, scope: !1317)
!1321 = !DILocation(line: 1183, column: 11, scope: !1318)
!1322 = !DILocation(line: 1184, column: 14, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1184, column: 14)
!1324 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 1183, column: 42)
!1325 = !DILocation(line: 1184, column: 14, scope: !1324)
!1326 = !DILocation(line: 1185, column: 20, scope: !1323)
!1327 = !DILocation(line: 1187, column: 20, scope: !1323)
!1328 = !DILocation(line: 1187, column: 46, scope: !1323)
!1329 = !DILocation(line: 1187, column: 38, scope: !1323)
!1330 = !DILocation(line: 1185, column: 10, scope: !1323)
!1331 = !DILocation(line: 1188, column: 10, scope: !1324)
!1332 = !DILocation(line: 1189, column: 10, scope: !1324)
!1333 = !DILocation(line: 1191, column: 4, scope: !1318)
!1334 = !DILocation(line: 1182, column: 40, scope: !1313)
!1335 = !DILocation(line: 1182, column: 4, scope: !1313)
!1336 = distinct !{!1336, !1315, !1337, !424}
!1337 = !DILocation(line: 1191, column: 4, scope: !1310)
!1338 = !DILocation(line: 1192, column: 9, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1192, column: 9)
!1340 = !DILocation(line: 1192, column: 17, scope: !1339)
!1341 = !DILocation(line: 1192, column: 27, scope: !1339)
!1342 = !DILocation(line: 1192, column: 30, scope: !1339)
!1343 = !DILocation(line: 1192, column: 38, scope: !1339)
!1344 = !DILocation(line: 1192, column: 9, scope: !1242)
!1345 = !DILocation(line: 1193, column: 7, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 1192, column: 50)
!1347 = !DILocation(line: 1194, column: 12, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 1194, column: 12)
!1349 = !DILocation(line: 1194, column: 12, scope: !1346)
!1350 = !DILocation(line: 1195, column: 19, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 1194, column: 42)
!1352 = !DILocation(line: 1197, column: 19, scope: !1351)
!1353 = !DILocation(line: 1195, column: 10, scope: !1351)
!1354 = !DILocation(line: 1198, column: 10, scope: !1351)
!1355 = !DILocation(line: 1199, column: 10, scope: !1351)
!1356 = !DILocation(line: 1201, column: 4, scope: !1346)
!1357 = !DILocation(line: 1202, column: 9, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1202, column: 9)
!1359 = !DILocation(line: 1202, column: 17, scope: !1358)
!1360 = !DILocation(line: 1202, column: 27, scope: !1358)
!1361 = !DILocation(line: 1202, column: 31, scope: !1358)
!1362 = !DILocation(line: 1202, column: 46, scope: !1358)
!1363 = !DILocation(line: 1202, column: 49, scope: !1358)
!1364 = !DILocation(line: 1202, column: 9, scope: !1242)
!1365 = !DILocation(line: 1203, column: 11, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 1203, column: 11)
!1367 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 1202, column: 78)
!1368 = !DILocation(line: 1203, column: 11, scope: !1367)
!1369 = !DILocation(line: 1204, column: 17, scope: !1366)
!1370 = !DILocation(line: 1205, column: 17, scope: !1366)
!1371 = !DILocation(line: 1204, column: 7, scope: !1366)
!1372 = !DILocation(line: 1206, column: 7, scope: !1367)
!1373 = !DILocation(line: 1207, column: 7, scope: !1367)
!1374 = !DILocation(line: 1209, column: 9, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1209, column: 9)
!1376 = !DILocation(line: 1209, column: 17, scope: !1375)
!1377 = !DILocation(line: 1209, column: 27, scope: !1375)
!1378 = !DILocation(line: 1209, column: 30, scope: !1375)
!1379 = !DILocation(line: 1209, column: 9, scope: !1242)
!1380 = !DILocation(line: 1210, column: 11, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 1210, column: 11)
!1382 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 1209, column: 55)
!1383 = !DILocation(line: 1210, column: 11, scope: !1382)
!1384 = !DILocation(line: 1211, column: 3, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 1210, column: 27)
!1386 = !DILocation(line: 1212, column: 7, scope: !1385)
!1387 = !DILocation(line: 1213, column: 13, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 1212, column: 14)
!1389 = !DILocation(line: 1214, column: 6, scope: !1388)
!1390 = !DILocation(line: 1213, column: 3, scope: !1388)
!1391 = !DILocation(line: 1215, column: 3, scope: !1388)
!1392 = !DILocation(line: 1216, column: 3, scope: !1388)
!1393 = !DILocation(line: 1218, column: 4, scope: !1382)
!1394 = !DILocation(line: 1219, column: 9, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1219, column: 9)
!1396 = !DILocation(line: 1219, column: 17, scope: !1395)
!1397 = !DILocation(line: 1219, column: 27, scope: !1395)
!1398 = !DILocation(line: 1219, column: 31, scope: !1395)
!1399 = !DILocation(line: 1219, column: 46, scope: !1395)
!1400 = !DILocation(line: 1220, column: 12, scope: !1395)
!1401 = !DILocation(line: 1220, column: 11, scope: !1395)
!1402 = !DILocation(line: 1220, column: 39, scope: !1395)
!1403 = !DILocation(line: 1219, column: 9, scope: !1242)
!1404 = !DILocation(line: 1221, column: 17, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 1220, column: 44)
!1406 = !DILocation(line: 1222, column: 17, scope: !1405)
!1407 = !DILocation(line: 1222, column: 35, scope: !1405)
!1408 = !DILocation(line: 1222, column: 38, scope: !1405)
!1409 = !DILocation(line: 1222, column: 40, scope: !1405)
!1410 = !DILocation(line: 1221, column: 7, scope: !1405)
!1411 = !DILocation(line: 1223, column: 7, scope: !1405)
!1412 = !DILocation(line: 1224, column: 7, scope: !1405)
!1413 = !DILocation(line: 1227, column: 9, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1227, column: 9)
!1415 = !DILocation(line: 1227, column: 17, scope: !1414)
!1416 = !DILocation(line: 1227, column: 9, scope: !1242)
!1417 = !DILocation(line: 1230, column: 7, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 1227, column: 29)
!1419 = !DILocation(line: 1231, column: 4, scope: !1418)
!1420 = !DILocation(line: 1233, column: 13, scope: !1242)
!1421 = !DILocation(line: 1233, column: 4, scope: !1242)
!1422 = !DILocation(line: 1236, column: 18, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1233, column: 23)
!1424 = !DILocation(line: 1236, column: 16, scope: !1423)
!1425 = !DILocation(line: 1237, column: 19, scope: !1423)
!1426 = !DILocation(line: 1237, column: 17, scope: !1423)
!1427 = !DILocation(line: 1238, column: 33, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1238, column: 15)
!1429 = !DILocation(line: 1238, column: 24, scope: !1428)
!1430 = !DILocation(line: 1238, column: 15, scope: !1428)
!1431 = !DILocation(line: 1238, column: 15, scope: !1423)
!1432 = !DILocation(line: 1239, column: 23, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 1238, column: 46)
!1434 = !DILocation(line: 1241, column: 23, scope: !1433)
!1435 = !DILocation(line: 1239, column: 13, scope: !1433)
!1436 = !DILocation(line: 1242, column: 23, scope: !1433)
!1437 = !DILocation(line: 1243, column: 31, scope: !1433)
!1438 = !DILocation(line: 1243, column: 41, scope: !1433)
!1439 = !DILocation(line: 1242, column: 13, scope: !1433)
!1440 = !DILocation(line: 1244, column: 13, scope: !1433)
!1441 = !DILocation(line: 1245, column: 13, scope: !1433)
!1442 = !DILocation(line: 1247, column: 10, scope: !1423)
!1443 = !DILocation(line: 1250, column: 18, scope: !1423)
!1444 = !DILocation(line: 1250, column: 16, scope: !1423)
!1445 = !DILocation(line: 1251, column: 19, scope: !1423)
!1446 = !DILocation(line: 1251, column: 17, scope: !1423)
!1447 = !DILocation(line: 1252, column: 33, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1252, column: 15)
!1449 = !DILocation(line: 1252, column: 24, scope: !1448)
!1450 = !DILocation(line: 1252, column: 15, scope: !1448)
!1451 = !DILocation(line: 1252, column: 15, scope: !1423)
!1452 = !DILocation(line: 1253, column: 23, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 1252, column: 46)
!1454 = !DILocation(line: 1255, column: 23, scope: !1453)
!1455 = !DILocation(line: 1253, column: 13, scope: !1453)
!1456 = !DILocation(line: 1256, column: 23, scope: !1453)
!1457 = !DILocation(line: 1257, column: 31, scope: !1453)
!1458 = !DILocation(line: 1257, column: 41, scope: !1453)
!1459 = !DILocation(line: 1256, column: 13, scope: !1453)
!1460 = !DILocation(line: 1258, column: 18, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 1258, column: 18)
!1462 = !DILocation(line: 1258, column: 24, scope: !1461)
!1463 = !DILocation(line: 1258, column: 18, scope: !1453)
!1464 = !DILocation(line: 1258, column: 43, scope: !1461)
!1465 = !DILocation(line: 1258, column: 34, scope: !1461)
!1466 = !DILocation(line: 1259, column: 13, scope: !1453)
!1467 = !DILocation(line: 1260, column: 13, scope: !1453)
!1468 = !DILocation(line: 1262, column: 15, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1262, column: 15)
!1470 = !DILocation(line: 1262, column: 21, scope: !1469)
!1471 = !DILocation(line: 1262, column: 15, scope: !1423)
!1472 = !DILocation(line: 1263, column: 23, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 1262, column: 31)
!1474 = !DILocation(line: 1264, column: 23, scope: !1473)
!1475 = !DILocation(line: 1264, column: 50, scope: !1473)
!1476 = !DILocation(line: 1264, column: 41, scope: !1473)
!1477 = !DILocation(line: 1263, column: 13, scope: !1473)
!1478 = !DILocation(line: 1265, column: 13, scope: !1473)
!1479 = !DILocation(line: 1266, column: 13, scope: !1473)
!1480 = !DILocation(line: 1268, column: 10, scope: !1423)
!1481 = !DILocation(line: 1271, column: 18, scope: !1423)
!1482 = !DILocation(line: 1271, column: 16, scope: !1423)
!1483 = !DILocation(line: 1272, column: 19, scope: !1423)
!1484 = !DILocation(line: 1272, column: 17, scope: !1423)
!1485 = !DILocation(line: 1273, column: 15, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1273, column: 15)
!1487 = !DILocation(line: 1273, column: 22, scope: !1486)
!1488 = !DILocation(line: 1273, column: 15, scope: !1423)
!1489 = !DILocation(line: 1274, column: 23, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1273, column: 31)
!1491 = !DILocation(line: 1275, column: 23, scope: !1490)
!1492 = !DILocation(line: 1275, column: 51, scope: !1490)
!1493 = !DILocation(line: 1275, column: 42, scope: !1490)
!1494 = !DILocation(line: 1274, column: 13, scope: !1490)
!1495 = !DILocation(line: 1276, column: 18, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1490, file: !3, line: 1276, column: 18)
!1497 = !DILocation(line: 1276, column: 24, scope: !1496)
!1498 = !DILocation(line: 1276, column: 18, scope: !1490)
!1499 = !DILocation(line: 1276, column: 43, scope: !1496)
!1500 = !DILocation(line: 1276, column: 34, scope: !1496)
!1501 = !DILocation(line: 1277, column: 13, scope: !1490)
!1502 = !DILocation(line: 1278, column: 13, scope: !1490)
!1503 = !DILocation(line: 1280, column: 15, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1280, column: 15)
!1505 = !DILocation(line: 1280, column: 21, scope: !1504)
!1506 = !DILocation(line: 1280, column: 15, scope: !1423)
!1507 = !DILocation(line: 1281, column: 23, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 1280, column: 31)
!1509 = !DILocation(line: 1282, column: 23, scope: !1508)
!1510 = !DILocation(line: 1282, column: 50, scope: !1508)
!1511 = !DILocation(line: 1282, column: 41, scope: !1508)
!1512 = !DILocation(line: 1281, column: 13, scope: !1508)
!1513 = !DILocation(line: 1283, column: 18, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 1283, column: 18)
!1515 = !DILocation(line: 1283, column: 25, scope: !1514)
!1516 = !DILocation(line: 1283, column: 18, scope: !1508)
!1517 = !DILocation(line: 1283, column: 44, scope: !1514)
!1518 = !DILocation(line: 1283, column: 35, scope: !1514)
!1519 = !DILocation(line: 1284, column: 13, scope: !1508)
!1520 = !DILocation(line: 1285, column: 13, scope: !1508)
!1521 = !DILocation(line: 1287, column: 10, scope: !1423)
!1522 = !DILocation(line: 1290, column: 10, scope: !1423)
!1523 = !DILocation(line: 1294, column: 8, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1294, column: 8)
!1525 = !DILocation(line: 1294, column: 18, scope: !1524)
!1526 = !DILocation(line: 1294, column: 8, scope: !1242)
!1527 = !DILocation(line: 1295, column: 17, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 1294, column: 24)
!1529 = !DILocation(line: 1295, column: 7, scope: !1528)
!1530 = !DILocation(line: 1296, column: 7, scope: !1528)
!1531 = !DILocation(line: 1297, column: 16, scope: !1528)
!1532 = !DILocation(line: 1297, column: 7, scope: !1528)
!1533 = !DILocation(line: 1298, column: 4, scope: !1528)
!1534 = !DILocation(line: 1301, column: 29, scope: !1242)
!1535 = !DILocation(line: 1301, column: 27, scope: !1242)
!1536 = !DILocation(line: 1302, column: 28, scope: !1242)
!1537 = !DILocation(line: 1303, column: 21, scope: !1242)
!1538 = !DILocation(line: 1303, column: 28, scope: !1242)
!1539 = !DILocation(line: 1303, column: 4, scope: !1242)
!1540 = !DILocation(line: 1304, column: 27, scope: !1242)
!1541 = !DILocation(line: 1307, column: 9, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1307, column: 9)
!1543 = !DILocation(line: 1307, column: 17, scope: !1542)
!1544 = !DILocation(line: 1307, column: 9, scope: !1242)
!1545 = !DILocation(line: 1308, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 1307, column: 29)
!1547 = !DILocation(line: 1309, column: 31, scope: !1546)
!1548 = !DILocation(line: 1310, column: 13, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 1310, column: 12)
!1550 = !DILocation(line: 1310, column: 12, scope: !1546)
!1551 = !DILocalVariable(name: "retVal", scope: !1552, file: !3, line: 1311, type: !361)
!1552 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 1310, column: 30)
!1553 = !DILocation(line: 1311, column: 20, scope: !1552)
!1554 = !DILocation(line: 1311, column: 29, scope: !1552)
!1555 = !DILocation(line: 1312, column: 10, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 1312, column: 10)
!1557 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 1312, column: 10)
!1558 = !DILocation(line: 1312, column: 10, scope: !1557)
!1559 = !DILocation(line: 1313, column: 7, scope: !1552)
!1560 = !DILocation(line: 1314, column: 4, scope: !1546)
!1561 = !DILocation(line: 1316, column: 28, scope: !1242)
!1562 = !DILocation(line: 1317, column: 1, scope: !1242)
!1563 = distinct !DISubprogram(name: "uncompress", scope: !3, file: !3, line: 1322, type: !1218, scopeLine: 1323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1564 = !DILocalVariable(name: "name", arg: 1, scope: !1563, file: !3, line: 1322, type: !8)
!1565 = !DILocation(line: 1322, column: 25, scope: !1563)
!1566 = !DILocalVariable(name: "inStr", scope: !1563, file: !3, line: 1324, type: !82)
!1567 = !DILocation(line: 1324, column: 11, scope: !1563)
!1568 = !DILocalVariable(name: "outStr", scope: !1563, file: !3, line: 1325, type: !82)
!1569 = !DILocation(line: 1325, column: 11, scope: !1563)
!1570 = !DILocalVariable(name: "n", scope: !1563, file: !3, line: 1326, type: !12)
!1571 = !DILocation(line: 1326, column: 10, scope: !1563)
!1572 = !DILocalVariable(name: "i", scope: !1563, file: !3, line: 1326, type: !12)
!1573 = !DILocation(line: 1326, column: 13, scope: !1563)
!1574 = !DILocalVariable(name: "magicNumberOK", scope: !1563, file: !3, line: 1327, type: !6)
!1575 = !DILocation(line: 1327, column: 10, scope: !1563)
!1576 = !DILocalVariable(name: "cantGuess", scope: !1563, file: !3, line: 1328, type: !6)
!1577 = !DILocation(line: 1328, column: 10, scope: !1563)
!1578 = !DILocalVariable(name: "statBuf", scope: !1563, file: !3, line: 1329, type: !302)
!1579 = !DILocation(line: 1329, column: 19, scope: !1563)
!1580 = !DILocation(line: 1331, column: 28, scope: !1563)
!1581 = !DILocation(line: 1333, column: 8, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1333, column: 8)
!1583 = !DILocation(line: 1333, column: 13, scope: !1582)
!1584 = !DILocation(line: 1333, column: 21, scope: !1582)
!1585 = !DILocation(line: 1333, column: 24, scope: !1582)
!1586 = !DILocation(line: 1333, column: 32, scope: !1582)
!1587 = !DILocation(line: 1333, column: 8, scope: !1563)
!1588 = !DILocation(line: 1334, column: 7, scope: !1582)
!1589 = !DILocation(line: 1336, column: 14, scope: !1563)
!1590 = !DILocation(line: 1337, column: 12, scope: !1563)
!1591 = !DILocation(line: 1337, column: 4, scope: !1563)
!1592 = !DILocation(line: 1339, column: 10, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1337, column: 21)
!1594 = !DILocation(line: 1340, column: 10, scope: !1593)
!1595 = !DILocation(line: 1341, column: 10, scope: !1593)
!1596 = !DILocation(line: 1343, column: 33, scope: !1593)
!1597 = !DILocation(line: 1343, column: 10, scope: !1593)
!1598 = !DILocation(line: 1344, column: 34, scope: !1593)
!1599 = !DILocation(line: 1344, column: 10, scope: !1593)
!1600 = !DILocation(line: 1345, column: 17, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 1345, column: 10)
!1602 = !DILocation(line: 1345, column: 15, scope: !1601)
!1603 = !DILocation(line: 1345, column: 22, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 1345, column: 10)
!1605 = !DILocation(line: 1345, column: 24, scope: !1604)
!1606 = !DILocation(line: 1345, column: 10, scope: !1601)
!1607 = !DILocation(line: 1346, column: 43, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 1346, column: 17)
!1609 = !DILocation(line: 1346, column: 35, scope: !1608)
!1610 = !DILocation(line: 1346, column: 56, scope: !1608)
!1611 = !DILocation(line: 1346, column: 46, scope: !1608)
!1612 = !DILocation(line: 1346, column: 17, scope: !1608)
!1613 = !DILocation(line: 1346, column: 17, scope: !1604)
!1614 = !DILocation(line: 1347, column: 16, scope: !1608)
!1615 = !DILocation(line: 1346, column: 58, scope: !1608)
!1616 = !DILocation(line: 1345, column: 46, scope: !1604)
!1617 = !DILocation(line: 1345, column: 10, scope: !1604)
!1618 = distinct !{!1618, !1606, !1619, !424}
!1619 = !DILocation(line: 1347, column: 21, scope: !1601)
!1620 = !DILocation(line: 1348, column: 20, scope: !1593)
!1621 = !DILocation(line: 1349, column: 10, scope: !1593)
!1622 = !DILocation(line: 1350, column: 10, scope: !1593)
!1623 = !DILocation(line: 1352, column: 33, scope: !1593)
!1624 = !DILocation(line: 1352, column: 10, scope: !1593)
!1625 = !DILocation(line: 1353, column: 10, scope: !1593)
!1626 = !DILocation(line: 1354, column: 10, scope: !1593)
!1627 = !DILocation(line: 1355, column: 4, scope: !1593)
!1628 = !DILabel(scope: !1563, name: "zzz", file: !3, line: 1357)
!1629 = !DILocation(line: 1357, column: 4, scope: !1563)
!1630 = !DILocation(line: 1358, column: 9, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1358, column: 9)
!1632 = !DILocation(line: 1358, column: 17, scope: !1631)
!1633 = !DILocation(line: 1358, column: 27, scope: !1631)
!1634 = !DILocation(line: 1358, column: 30, scope: !1631)
!1635 = !DILocation(line: 1358, column: 9, scope: !1563)
!1636 = !DILocation(line: 1359, column: 11, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 1359, column: 11)
!1638 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 1358, column: 64)
!1639 = !DILocation(line: 1359, column: 11, scope: !1638)
!1640 = !DILocation(line: 1360, column: 17, scope: !1637)
!1641 = !DILocation(line: 1361, column: 17, scope: !1637)
!1642 = !DILocation(line: 1360, column: 7, scope: !1637)
!1643 = !DILocation(line: 1362, column: 7, scope: !1638)
!1644 = !DILocation(line: 1363, column: 7, scope: !1638)
!1645 = !DILocation(line: 1365, column: 9, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1365, column: 9)
!1647 = !DILocation(line: 1365, column: 17, scope: !1646)
!1648 = !DILocation(line: 1365, column: 27, scope: !1646)
!1649 = !DILocation(line: 1365, column: 31, scope: !1646)
!1650 = !DILocation(line: 1365, column: 9, scope: !1563)
!1651 = !DILocation(line: 1366, column: 17, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 1365, column: 55)
!1653 = !DILocation(line: 1367, column: 17, scope: !1652)
!1654 = !DILocation(line: 1367, column: 44, scope: !1652)
!1655 = !DILocation(line: 1367, column: 35, scope: !1652)
!1656 = !DILocation(line: 1366, column: 7, scope: !1652)
!1657 = !DILocation(line: 1368, column: 7, scope: !1652)
!1658 = !DILocation(line: 1369, column: 7, scope: !1652)
!1659 = !DILocation(line: 1371, column: 9, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1371, column: 9)
!1661 = !DILocation(line: 1371, column: 17, scope: !1660)
!1662 = !DILocation(line: 1371, column: 27, scope: !1660)
!1663 = !DILocation(line: 1371, column: 30, scope: !1660)
!1664 = !DILocation(line: 1371, column: 38, scope: !1660)
!1665 = !DILocation(line: 1371, column: 9, scope: !1563)
!1666 = !DILocation(line: 1372, column: 7, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 1371, column: 50)
!1668 = !DILocation(line: 1373, column: 12, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 1373, column: 12)
!1670 = !DILocation(line: 1373, column: 12, scope: !1667)
!1671 = !DILocation(line: 1374, column: 19, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 1373, column: 42)
!1673 = !DILocation(line: 1376, column: 19, scope: !1672)
!1674 = !DILocation(line: 1374, column: 10, scope: !1672)
!1675 = !DILocation(line: 1377, column: 10, scope: !1672)
!1676 = !DILocation(line: 1378, column: 10, scope: !1672)
!1677 = !DILocation(line: 1380, column: 4, scope: !1667)
!1678 = !DILocation(line: 1381, column: 9, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1381, column: 9)
!1680 = !DILocation(line: 1381, column: 17, scope: !1679)
!1681 = !DILocation(line: 1381, column: 27, scope: !1679)
!1682 = !DILocation(line: 1381, column: 31, scope: !1679)
!1683 = !DILocation(line: 1381, column: 46, scope: !1679)
!1684 = !DILocation(line: 1381, column: 49, scope: !1679)
!1685 = !DILocation(line: 1381, column: 9, scope: !1563)
!1686 = !DILocation(line: 1382, column: 11, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 1382, column: 11)
!1688 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 1381, column: 78)
!1689 = !DILocation(line: 1382, column: 11, scope: !1688)
!1690 = !DILocation(line: 1383, column: 17, scope: !1687)
!1691 = !DILocation(line: 1384, column: 17, scope: !1687)
!1692 = !DILocation(line: 1383, column: 7, scope: !1687)
!1693 = !DILocation(line: 1385, column: 7, scope: !1688)
!1694 = !DILocation(line: 1386, column: 7, scope: !1688)
!1695 = !DILocation(line: 1388, column: 44, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1388, column: 44)
!1697 = !DILocation(line: 1388, column: 44, scope: !1563)
!1698 = !DILocation(line: 1389, column: 11, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 1389, column: 11)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !3, line: 1388, column: 56)
!1701 = !DILocation(line: 1389, column: 11, scope: !1700)
!1702 = !DILocation(line: 1390, column: 17, scope: !1699)
!1703 = !DILocation(line: 1392, column: 17, scope: !1699)
!1704 = !DILocation(line: 1390, column: 7, scope: !1699)
!1705 = !DILocation(line: 1394, column: 4, scope: !1700)
!1706 = !DILocation(line: 1395, column: 9, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1395, column: 9)
!1708 = !DILocation(line: 1395, column: 17, scope: !1707)
!1709 = !DILocation(line: 1395, column: 27, scope: !1707)
!1710 = !DILocation(line: 1395, column: 30, scope: !1707)
!1711 = !DILocation(line: 1395, column: 9, scope: !1563)
!1712 = !DILocation(line: 1396, column: 11, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 1396, column: 11)
!1714 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 1395, column: 55)
!1715 = !DILocation(line: 1396, column: 11, scope: !1714)
!1716 = !DILocation(line: 1397, column: 2, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 1396, column: 27)
!1718 = !DILocation(line: 1398, column: 7, scope: !1717)
!1719 = !DILocation(line: 1399, column: 19, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 1398, column: 14)
!1721 = !DILocation(line: 1400, column: 19, scope: !1720)
!1722 = !DILocation(line: 1399, column: 9, scope: !1720)
!1723 = !DILocation(line: 1401, column: 9, scope: !1720)
!1724 = !DILocation(line: 1402, column: 9, scope: !1720)
!1725 = !DILocation(line: 1404, column: 4, scope: !1714)
!1726 = !DILocation(line: 1405, column: 9, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1405, column: 9)
!1728 = !DILocation(line: 1405, column: 17, scope: !1727)
!1729 = !DILocation(line: 1405, column: 27, scope: !1727)
!1730 = !DILocation(line: 1405, column: 31, scope: !1727)
!1731 = !DILocation(line: 1405, column: 46, scope: !1727)
!1732 = !DILocation(line: 1406, column: 12, scope: !1727)
!1733 = !DILocation(line: 1406, column: 11, scope: !1727)
!1734 = !DILocation(line: 1406, column: 40, scope: !1727)
!1735 = !DILocation(line: 1405, column: 9, scope: !1563)
!1736 = !DILocation(line: 1407, column: 17, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 1406, column: 45)
!1738 = !DILocation(line: 1408, column: 17, scope: !1737)
!1739 = !DILocation(line: 1408, column: 35, scope: !1737)
!1740 = !DILocation(line: 1408, column: 38, scope: !1737)
!1741 = !DILocation(line: 1408, column: 40, scope: !1737)
!1742 = !DILocation(line: 1407, column: 7, scope: !1737)
!1743 = !DILocation(line: 1409, column: 7, scope: !1737)
!1744 = !DILocation(line: 1410, column: 7, scope: !1737)
!1745 = !DILocation(line: 1413, column: 9, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1413, column: 9)
!1747 = !DILocation(line: 1413, column: 17, scope: !1746)
!1748 = !DILocation(line: 1413, column: 9, scope: !1563)
!1749 = !DILocation(line: 1416, column: 7, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 1413, column: 29)
!1751 = !DILocation(line: 1417, column: 4, scope: !1750)
!1752 = !DILocation(line: 1419, column: 13, scope: !1563)
!1753 = !DILocation(line: 1419, column: 4, scope: !1563)
!1754 = !DILocation(line: 1422, column: 18, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1419, column: 23)
!1756 = !DILocation(line: 1422, column: 16, scope: !1755)
!1757 = !DILocation(line: 1423, column: 19, scope: !1755)
!1758 = !DILocation(line: 1423, column: 17, scope: !1755)
!1759 = !DILocation(line: 1424, column: 33, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 1424, column: 15)
!1761 = !DILocation(line: 1424, column: 24, scope: !1760)
!1762 = !DILocation(line: 1424, column: 15, scope: !1760)
!1763 = !DILocation(line: 1424, column: 15, scope: !1755)
!1764 = !DILocation(line: 1425, column: 23, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 1424, column: 45)
!1766 = !DILocation(line: 1427, column: 23, scope: !1765)
!1767 = !DILocation(line: 1425, column: 13, scope: !1765)
!1768 = !DILocation(line: 1428, column: 23, scope: !1765)
!1769 = !DILocation(line: 1429, column: 31, scope: !1765)
!1770 = !DILocation(line: 1429, column: 41, scope: !1765)
!1771 = !DILocation(line: 1428, column: 13, scope: !1765)
!1772 = !DILocation(line: 1430, column: 13, scope: !1765)
!1773 = !DILocation(line: 1431, column: 13, scope: !1765)
!1774 = !DILocation(line: 1433, column: 10, scope: !1755)
!1775 = !DILocation(line: 1436, column: 18, scope: !1755)
!1776 = !DILocation(line: 1436, column: 16, scope: !1755)
!1777 = !DILocation(line: 1437, column: 19, scope: !1755)
!1778 = !DILocation(line: 1437, column: 17, scope: !1755)
!1779 = !DILocation(line: 1438, column: 15, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 1438, column: 15)
!1781 = !DILocation(line: 1438, column: 21, scope: !1780)
!1782 = !DILocation(line: 1438, column: 15, scope: !1755)
!1783 = !DILocation(line: 1439, column: 23, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 1438, column: 31)
!1785 = !DILocation(line: 1440, column: 23, scope: !1784)
!1786 = !DILocation(line: 1440, column: 50, scope: !1784)
!1787 = !DILocation(line: 1440, column: 41, scope: !1784)
!1788 = !DILocation(line: 1439, column: 13, scope: !1784)
!1789 = !DILocation(line: 1441, column: 18, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 1441, column: 18)
!1791 = !DILocation(line: 1441, column: 24, scope: !1790)
!1792 = !DILocation(line: 1441, column: 18, scope: !1784)
!1793 = !DILocation(line: 1441, column: 43, scope: !1790)
!1794 = !DILocation(line: 1441, column: 34, scope: !1790)
!1795 = !DILocation(line: 1442, column: 13, scope: !1784)
!1796 = !DILocation(line: 1443, column: 13, scope: !1784)
!1797 = !DILocation(line: 1445, column: 10, scope: !1755)
!1798 = !DILocation(line: 1448, column: 18, scope: !1755)
!1799 = !DILocation(line: 1448, column: 16, scope: !1755)
!1800 = !DILocation(line: 1449, column: 19, scope: !1755)
!1801 = !DILocation(line: 1449, column: 17, scope: !1755)
!1802 = !DILocation(line: 1450, column: 15, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 1450, column: 15)
!1804 = !DILocation(line: 1450, column: 22, scope: !1803)
!1805 = !DILocation(line: 1450, column: 15, scope: !1755)
!1806 = !DILocation(line: 1451, column: 23, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 1450, column: 31)
!1808 = !DILocation(line: 1452, column: 23, scope: !1807)
!1809 = !DILocation(line: 1452, column: 51, scope: !1807)
!1810 = !DILocation(line: 1452, column: 42, scope: !1807)
!1811 = !DILocation(line: 1451, column: 13, scope: !1807)
!1812 = !DILocation(line: 1453, column: 18, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 1453, column: 18)
!1814 = !DILocation(line: 1453, column: 24, scope: !1813)
!1815 = !DILocation(line: 1453, column: 18, scope: !1807)
!1816 = !DILocation(line: 1453, column: 43, scope: !1813)
!1817 = !DILocation(line: 1453, column: 34, scope: !1813)
!1818 = !DILocation(line: 1454, column: 13, scope: !1807)
!1819 = !DILocation(line: 1455, column: 13, scope: !1807)
!1820 = !DILocation(line: 1457, column: 15, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 1457, column: 15)
!1822 = !DILocation(line: 1457, column: 21, scope: !1821)
!1823 = !DILocation(line: 1457, column: 15, scope: !1755)
!1824 = !DILocation(line: 1458, column: 23, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 1457, column: 31)
!1826 = !DILocation(line: 1459, column: 23, scope: !1825)
!1827 = !DILocation(line: 1459, column: 50, scope: !1825)
!1828 = !DILocation(line: 1459, column: 41, scope: !1825)
!1829 = !DILocation(line: 1458, column: 13, scope: !1825)
!1830 = !DILocation(line: 1460, column: 18, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 1460, column: 18)
!1832 = !DILocation(line: 1460, column: 25, scope: !1831)
!1833 = !DILocation(line: 1460, column: 18, scope: !1825)
!1834 = !DILocation(line: 1460, column: 44, scope: !1831)
!1835 = !DILocation(line: 1460, column: 35, scope: !1831)
!1836 = !DILocation(line: 1461, column: 13, scope: !1825)
!1837 = !DILocation(line: 1462, column: 13, scope: !1825)
!1838 = !DILocation(line: 1464, column: 10, scope: !1755)
!1839 = !DILocation(line: 1467, column: 10, scope: !1755)
!1840 = !DILocation(line: 1471, column: 8, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1471, column: 8)
!1842 = !DILocation(line: 1471, column: 18, scope: !1841)
!1843 = !DILocation(line: 1471, column: 8, scope: !1563)
!1844 = !DILocation(line: 1472, column: 17, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 1471, column: 24)
!1846 = !DILocation(line: 1472, column: 7, scope: !1845)
!1847 = !DILocation(line: 1473, column: 7, scope: !1845)
!1848 = !DILocation(line: 1474, column: 16, scope: !1845)
!1849 = !DILocation(line: 1474, column: 7, scope: !1845)
!1850 = !DILocation(line: 1475, column: 4, scope: !1845)
!1851 = !DILocation(line: 1478, column: 29, scope: !1563)
!1852 = !DILocation(line: 1478, column: 27, scope: !1563)
!1853 = !DILocation(line: 1479, column: 28, scope: !1563)
!1854 = !DILocation(line: 1480, column: 39, scope: !1563)
!1855 = !DILocation(line: 1480, column: 46, scope: !1563)
!1856 = !DILocation(line: 1480, column: 20, scope: !1563)
!1857 = !DILocation(line: 1480, column: 18, scope: !1563)
!1858 = !DILocation(line: 1481, column: 27, scope: !1563)
!1859 = !DILocation(line: 1484, column: 9, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1484, column: 9)
!1861 = !DILocation(line: 1484, column: 9, scope: !1563)
!1862 = !DILocation(line: 1485, column: 12, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 1485, column: 12)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 1484, column: 25)
!1865 = !DILocation(line: 1485, column: 20, scope: !1863)
!1866 = !DILocation(line: 1485, column: 12, scope: !1864)
!1867 = !DILocation(line: 1486, column: 10, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 1485, column: 32)
!1869 = !DILocation(line: 1487, column: 34, scope: !1868)
!1870 = !DILocation(line: 1488, column: 16, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 1488, column: 15)
!1872 = !DILocation(line: 1488, column: 15, scope: !1868)
!1873 = !DILocalVariable(name: "retVal", scope: !1874, file: !3, line: 1489, type: !361)
!1874 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 1488, column: 33)
!1875 = !DILocation(line: 1489, column: 23, scope: !1874)
!1876 = !DILocation(line: 1489, column: 32, scope: !1874)
!1877 = !DILocation(line: 1490, column: 13, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 1490, column: 13)
!1879 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 1490, column: 13)
!1880 = !DILocation(line: 1490, column: 13, scope: !1879)
!1881 = !DILocation(line: 1491, column: 10, scope: !1874)
!1882 = !DILocation(line: 1492, column: 7, scope: !1868)
!1883 = !DILocation(line: 1493, column: 4, scope: !1864)
!1884 = !DILocation(line: 1494, column: 21, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 1493, column: 11)
!1886 = !DILocation(line: 1495, column: 31, scope: !1885)
!1887 = !DILocation(line: 1496, column: 12, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1885, file: !3, line: 1496, column: 12)
!1889 = !DILocation(line: 1496, column: 20, scope: !1888)
!1890 = !DILocation(line: 1496, column: 12, scope: !1885)
!1891 = !DILocalVariable(name: "retVal", scope: !1892, file: !3, line: 1497, type: !361)
!1892 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 1496, column: 32)
!1893 = !DILocation(line: 1497, column: 20, scope: !1892)
!1894 = !DILocation(line: 1497, column: 29, scope: !1892)
!1895 = !DILocation(line: 1498, column: 10, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 1498, column: 10)
!1897 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 1498, column: 10)
!1898 = !DILocation(line: 1498, column: 10, scope: !1897)
!1899 = !DILocation(line: 1499, column: 7, scope: !1892)
!1900 = !DILocation(line: 1501, column: 28, scope: !1563)
!1901 = !DILocation(line: 1503, column: 9, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 1503, column: 9)
!1903 = !DILocation(line: 1503, column: 9, scope: !1563)
!1904 = !DILocation(line: 1504, column: 11, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 1504, column: 11)
!1906 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 1503, column: 25)
!1907 = !DILocation(line: 1504, column: 21, scope: !1905)
!1908 = !DILocation(line: 1504, column: 11, scope: !1906)
!1909 = !DILocation(line: 1505, column: 20, scope: !1905)
!1910 = !DILocation(line: 1505, column: 10, scope: !1905)
!1911 = !DILocation(line: 1506, column: 4, scope: !1906)
!1912 = !DILocation(line: 1507, column: 7, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 1506, column: 11)
!1914 = !DILocation(line: 1508, column: 11, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 1508, column: 11)
!1916 = !DILocation(line: 1508, column: 21, scope: !1915)
!1917 = !DILocation(line: 1508, column: 11, scope: !1913)
!1918 = !DILocation(line: 1509, column: 20, scope: !1915)
!1919 = !DILocation(line: 1509, column: 10, scope: !1915)
!1920 = !DILocation(line: 1510, column: 20, scope: !1915)
!1921 = !DILocation(line: 1512, column: 20, scope: !1915)
!1922 = !DILocation(line: 1510, column: 10, scope: !1915)
!1923 = !DILocation(line: 1515, column: 1, scope: !1563)
!1924 = distinct !DISubprogram(name: "setExit", scope: !3, file: !3, line: 651, type: !1925, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{null, !12}
!1927 = !DILocalVariable(name: "v", arg: 1, scope: !1924, file: !3, line: 651, type: !12)
!1928 = !DILocation(line: 651, column: 22, scope: !1924)
!1929 = !DILocation(line: 653, column: 8, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 653, column: 8)
!1931 = !DILocation(line: 653, column: 12, scope: !1930)
!1932 = !DILocation(line: 653, column: 10, scope: !1930)
!1933 = !DILocation(line: 653, column: 8, scope: !1924)
!1934 = !DILocation(line: 653, column: 35, scope: !1930)
!1935 = !DILocation(line: 653, column: 33, scope: !1930)
!1936 = !DILocation(line: 653, column: 23, scope: !1930)
!1937 = !DILocation(line: 654, column: 1, scope: !1924)
!1938 = distinct !DISubprogram(name: "testf", scope: !3, file: !3, line: 1520, type: !1218, scopeLine: 1521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1939 = !DILocalVariable(name: "name", arg: 1, scope: !1938, file: !3, line: 1520, type: !8)
!1940 = !DILocation(line: 1520, column: 20, scope: !1938)
!1941 = !DILocalVariable(name: "inStr", scope: !1938, file: !3, line: 1522, type: !82)
!1942 = !DILocation(line: 1522, column: 10, scope: !1938)
!1943 = !DILocalVariable(name: "allOK", scope: !1938, file: !3, line: 1523, type: !6)
!1944 = !DILocation(line: 1523, column: 9, scope: !1938)
!1945 = !DILocalVariable(name: "statBuf", scope: !1938, file: !3, line: 1524, type: !302)
!1946 = !DILocation(line: 1524, column: 19, scope: !1938)
!1947 = !DILocation(line: 1526, column: 28, scope: !1938)
!1948 = !DILocation(line: 1528, column: 8, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 1528, column: 8)
!1950 = !DILocation(line: 1528, column: 13, scope: !1949)
!1951 = !DILocation(line: 1528, column: 21, scope: !1949)
!1952 = !DILocation(line: 1528, column: 24, scope: !1949)
!1953 = !DILocation(line: 1528, column: 32, scope: !1949)
!1954 = !DILocation(line: 1528, column: 8, scope: !1938)
!1955 = !DILocation(line: 1529, column: 7, scope: !1949)
!1956 = !DILocation(line: 1531, column: 4, scope: !1938)
!1957 = !DILocation(line: 1532, column: 12, scope: !1938)
!1958 = !DILocation(line: 1532, column: 4, scope: !1938)
!1959 = !DILocation(line: 1533, column: 20, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 1532, column: 21)
!1961 = !DILocation(line: 1533, column: 63, scope: !1960)
!1962 = !DILocation(line: 1534, column: 43, scope: !1960)
!1963 = !DILocation(line: 1534, column: 20, scope: !1960)
!1964 = !DILocation(line: 1534, column: 51, scope: !1960)
!1965 = !DILocation(line: 1535, column: 43, scope: !1960)
!1966 = !DILocation(line: 1535, column: 20, scope: !1960)
!1967 = !DILocation(line: 1535, column: 51, scope: !1960)
!1968 = !DILocation(line: 1538, column: 9, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 1538, column: 9)
!1970 = !DILocation(line: 1538, column: 17, scope: !1969)
!1971 = !DILocation(line: 1538, column: 27, scope: !1969)
!1972 = !DILocation(line: 1538, column: 30, scope: !1969)
!1973 = !DILocation(line: 1538, column: 9, scope: !1938)
!1974 = !DILocation(line: 1539, column: 11, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 1539, column: 11)
!1976 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 1538, column: 64)
!1977 = !DILocation(line: 1539, column: 11, scope: !1976)
!1978 = !DILocation(line: 1540, column: 17, scope: !1975)
!1979 = !DILocation(line: 1541, column: 17, scope: !1975)
!1980 = !DILocation(line: 1540, column: 7, scope: !1975)
!1981 = !DILocation(line: 1542, column: 7, scope: !1976)
!1982 = !DILocation(line: 1543, column: 7, scope: !1976)
!1983 = !DILocation(line: 1545, column: 9, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 1545, column: 9)
!1985 = !DILocation(line: 1545, column: 17, scope: !1984)
!1986 = !DILocation(line: 1545, column: 27, scope: !1984)
!1987 = !DILocation(line: 1545, column: 31, scope: !1984)
!1988 = !DILocation(line: 1545, column: 9, scope: !1938)
!1989 = !DILocation(line: 1546, column: 17, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 1545, column: 55)
!1991 = !DILocation(line: 1547, column: 17, scope: !1990)
!1992 = !DILocation(line: 1547, column: 44, scope: !1990)
!1993 = !DILocation(line: 1547, column: 35, scope: !1990)
!1994 = !DILocation(line: 1546, column: 7, scope: !1990)
!1995 = !DILocation(line: 1548, column: 7, scope: !1990)
!1996 = !DILocation(line: 1549, column: 7, scope: !1990)
!1997 = !DILocation(line: 1551, column: 9, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 1551, column: 9)
!1999 = !DILocation(line: 1551, column: 17, scope: !1998)
!2000 = !DILocation(line: 1551, column: 9, scope: !1938)
!2001 = !DILocation(line: 1552, column: 7, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 1551, column: 29)
!2003 = !DILocation(line: 1553, column: 12, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 1553, column: 12)
!2005 = !DILocation(line: 1553, column: 12, scope: !2002)
!2006 = !DILocation(line: 1554, column: 19, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 1553, column: 42)
!2008 = !DILocation(line: 1556, column: 19, scope: !2007)
!2009 = !DILocation(line: 1554, column: 10, scope: !2007)
!2010 = !DILocation(line: 1557, column: 10, scope: !2007)
!2011 = !DILocation(line: 1558, column: 10, scope: !2007)
!2012 = !DILocation(line: 1560, column: 4, scope: !2002)
!2013 = !DILocation(line: 1562, column: 13, scope: !1938)
!2014 = !DILocation(line: 1562, column: 4, scope: !1938)
!2015 = !DILocation(line: 1565, column: 33, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 1565, column: 15)
!2017 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 1562, column: 23)
!2018 = !DILocation(line: 1565, column: 24, scope: !2016)
!2019 = !DILocation(line: 1565, column: 15, scope: !2016)
!2020 = !DILocation(line: 1565, column: 15, scope: !2017)
!2021 = !DILocation(line: 1566, column: 23, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 1565, column: 45)
!2023 = !DILocation(line: 1568, column: 23, scope: !2022)
!2024 = !DILocation(line: 1566, column: 13, scope: !2022)
!2025 = !DILocation(line: 1569, column: 23, scope: !2022)
!2026 = !DILocation(line: 1570, column: 31, scope: !2022)
!2027 = !DILocation(line: 1570, column: 41, scope: !2022)
!2028 = !DILocation(line: 1569, column: 13, scope: !2022)
!2029 = !DILocation(line: 1571, column: 13, scope: !2022)
!2030 = !DILocation(line: 1572, column: 13, scope: !2022)
!2031 = !DILocation(line: 1574, column: 18, scope: !2017)
!2032 = !DILocation(line: 1574, column: 16, scope: !2017)
!2033 = !DILocation(line: 1575, column: 10, scope: !2017)
!2034 = !DILocation(line: 1578, column: 18, scope: !2017)
!2035 = !DILocation(line: 1578, column: 16, scope: !2017)
!2036 = !DILocation(line: 1579, column: 15, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 1579, column: 15)
!2038 = !DILocation(line: 1579, column: 21, scope: !2037)
!2039 = !DILocation(line: 1579, column: 15, scope: !2017)
!2040 = !DILocation(line: 1580, column: 23, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 1579, column: 31)
!2042 = !DILocation(line: 1581, column: 23, scope: !2041)
!2043 = !DILocation(line: 1581, column: 50, scope: !2041)
!2044 = !DILocation(line: 1581, column: 41, scope: !2041)
!2045 = !DILocation(line: 1580, column: 13, scope: !2041)
!2046 = !DILocation(line: 1582, column: 13, scope: !2041)
!2047 = !DILocation(line: 1583, column: 13, scope: !2041)
!2048 = !DILocation(line: 1585, column: 10, scope: !2017)
!2049 = !DILocation(line: 1588, column: 10, scope: !2017)
!2050 = !DILocation(line: 1592, column: 8, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 1592, column: 8)
!2052 = !DILocation(line: 1592, column: 18, scope: !2051)
!2053 = !DILocation(line: 1592, column: 8, scope: !1938)
!2054 = !DILocation(line: 1593, column: 17, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 1592, column: 24)
!2056 = !DILocation(line: 1593, column: 7, scope: !2055)
!2057 = !DILocation(line: 1594, column: 7, scope: !2055)
!2058 = !DILocation(line: 1595, column: 16, scope: !2055)
!2059 = !DILocation(line: 1595, column: 7, scope: !2055)
!2060 = !DILocation(line: 1596, column: 4, scope: !2055)
!2061 = !DILocation(line: 1599, column: 27, scope: !1938)
!2062 = !DILocation(line: 1600, column: 25, scope: !1938)
!2063 = !DILocation(line: 1600, column: 12, scope: !1938)
!2064 = !DILocation(line: 1600, column: 10, scope: !1938)
!2065 = !DILocation(line: 1602, column: 8, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 1602, column: 8)
!2067 = !DILocation(line: 1602, column: 14, scope: !2066)
!2068 = !DILocation(line: 1602, column: 17, scope: !2066)
!2069 = !DILocation(line: 1602, column: 27, scope: !2066)
!2070 = !DILocation(line: 1602, column: 8, scope: !1938)
!2071 = !DILocation(line: 1602, column: 43, scope: !2066)
!2072 = !DILocation(line: 1602, column: 33, scope: !2066)
!2073 = !DILocation(line: 1603, column: 9, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 1603, column: 8)
!2075 = !DILocation(line: 1603, column: 8, scope: !1938)
!2076 = !DILocation(line: 1603, column: 31, scope: !2074)
!2077 = !DILocation(line: 1603, column: 16, scope: !2074)
!2078 = !DILocation(line: 1604, column: 1, scope: !1938)
!2079 = distinct !DISubprogram(name: "mkCell", scope: !3, file: !3, line: 1724, type: !2080, scopeLine: 1725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!14}
!2082 = !DILocalVariable(name: "c", scope: !2079, file: !3, line: 1726, type: !14)
!2083 = !DILocation(line: 1726, column: 10, scope: !2079)
!2084 = !DILocation(line: 1728, column: 16, scope: !2079)
!2085 = !DILocation(line: 1728, column: 8, scope: !2079)
!2086 = !DILocation(line: 1728, column: 6, scope: !2079)
!2087 = !DILocation(line: 1729, column: 4, scope: !2079)
!2088 = !DILocation(line: 1729, column: 7, scope: !2079)
!2089 = !DILocation(line: 1729, column: 12, scope: !2079)
!2090 = !DILocation(line: 1730, column: 4, scope: !2079)
!2091 = !DILocation(line: 1730, column: 7, scope: !2079)
!2092 = !DILocation(line: 1730, column: 12, scope: !2079)
!2093 = !DILocation(line: 1731, column: 11, scope: !2079)
!2094 = !DILocation(line: 1731, column: 4, scope: !2079)
!2095 = distinct !DISubprogram(name: "myMalloc", scope: !3, file: !3, line: 1712, type: !2096, scopeLine: 1713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!11, !12}
!2098 = !DILocalVariable(name: "n", arg: 1, scope: !2095, file: !3, line: 1712, type: !12)
!2099 = !DILocation(line: 1712, column: 24, scope: !2095)
!2100 = !DILocalVariable(name: "p", scope: !2095, file: !3, line: 1714, type: !11)
!2101 = !DILocation(line: 1714, column: 10, scope: !2095)
!2102 = !DILocation(line: 1716, column: 25, scope: !2095)
!2103 = !DILocation(line: 1716, column: 8, scope: !2095)
!2104 = !DILocation(line: 1716, column: 6, scope: !2095)
!2105 = !DILocation(line: 1717, column: 8, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 1717, column: 8)
!2107 = !DILocation(line: 1717, column: 10, scope: !2106)
!2108 = !DILocation(line: 1717, column: 8, scope: !2095)
!2109 = !DILocation(line: 1717, column: 19, scope: !2106)
!2110 = !DILocation(line: 1718, column: 11, scope: !2095)
!2111 = !DILocation(line: 1718, column: 4, scope: !2095)
!2112 = distinct !DISubprogram(name: "outOfMemory", scope: !3, file: !3, line: 880, type: !237, scopeLine: 881, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2113 = !DILocation(line: 882, column: 14, scope: !2112)
!2114 = !DILocation(line: 884, column: 14, scope: !2112)
!2115 = !DILocation(line: 882, column: 4, scope: !2112)
!2116 = !DILocation(line: 885, column: 4, scope: !2112)
!2117 = !DILocation(line: 886, column: 4, scope: !2112)
!2118 = distinct !DISubprogram(name: "showFileNames", scope: !3, file: !3, line: 674, type: !237, scopeLine: 675, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2119 = !DILocation(line: 676, column: 8, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 676, column: 8)
!2121 = !DILocation(line: 676, column: 8, scope: !2118)
!2122 = !DILocation(line: 678, column: 7, scope: !2120)
!2123 = !DILocation(line: 677, column: 4, scope: !2120)
!2124 = !DILocation(line: 682, column: 1, scope: !2118)
!2125 = distinct !DISubprogram(name: "cleanUpAndFail", scope: !3, file: !3, line: 687, type: !1925, scopeLine: 688, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2126 = !DILocalVariable(name: "ec", arg: 1, scope: !2125, file: !3, line: 687, type: !12)
!2127 = !DILocation(line: 687, column: 29, scope: !2125)
!2128 = !DILocalVariable(name: "retVal", scope: !2125, file: !3, line: 689, type: !361)
!2129 = !DILocation(line: 689, column: 19, scope: !2125)
!2130 = !DILocalVariable(name: "statBuf", scope: !2125, file: !3, line: 690, type: !302)
!2131 = !DILocation(line: 690, column: 19, scope: !2125)
!2132 = !DILocation(line: 692, column: 9, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 692, column: 9)
!2134 = !DILocation(line: 692, column: 17, scope: !2133)
!2135 = !DILocation(line: 693, column: 9, scope: !2133)
!2136 = !DILocation(line: 693, column: 12, scope: !2133)
!2137 = !DILocation(line: 693, column: 19, scope: !2133)
!2138 = !DILocation(line: 694, column: 9, scope: !2133)
!2139 = !DILocation(line: 694, column: 12, scope: !2133)
!2140 = !DILocation(line: 692, column: 9, scope: !2125)
!2141 = !DILocation(line: 701, column: 16, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2133, file: !3, line: 694, column: 38)
!2143 = !DILocation(line: 701, column: 14, scope: !2142)
!2144 = !DILocation(line: 702, column: 11, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 702, column: 11)
!2146 = !DILocation(line: 702, column: 18, scope: !2145)
!2147 = !DILocation(line: 702, column: 11, scope: !2142)
!2148 = !DILocation(line: 703, column: 14, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 703, column: 14)
!2150 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 702, column: 24)
!2151 = !DILocation(line: 703, column: 14, scope: !2150)
!2152 = !DILocation(line: 704, column: 23, scope: !2149)
!2153 = !DILocation(line: 706, column: 23, scope: !2149)
!2154 = !DILocation(line: 704, column: 13, scope: !2149)
!2155 = !DILocation(line: 707, column: 14, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 707, column: 14)
!2157 = !DILocation(line: 707, column: 37, scope: !2156)
!2158 = !DILocation(line: 707, column: 14, scope: !2150)
!2159 = !DILocation(line: 708, column: 22, scope: !2156)
!2160 = !DILocation(line: 708, column: 13, scope: !2156)
!2161 = !DILocation(line: 709, column: 19, scope: !2150)
!2162 = !DILocation(line: 709, column: 17, scope: !2150)
!2163 = !DILocation(line: 710, column: 14, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 710, column: 14)
!2165 = !DILocation(line: 710, column: 21, scope: !2164)
!2166 = !DILocation(line: 710, column: 14, scope: !2150)
!2167 = !DILocation(line: 711, column: 23, scope: !2164)
!2168 = !DILocation(line: 714, column: 23, scope: !2164)
!2169 = !DILocation(line: 711, column: 13, scope: !2164)
!2170 = !DILocation(line: 715, column: 7, scope: !2150)
!2171 = !DILocation(line: 716, column: 20, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 715, column: 14)
!2173 = !DILocation(line: 718, column: 21, scope: !2172)
!2174 = !DILocation(line: 716, column: 10, scope: !2172)
!2175 = !DILocation(line: 719, column: 20, scope: !2172)
!2176 = !DILocation(line: 721, column: 20, scope: !2172)
!2177 = !DILocation(line: 719, column: 10, scope: !2172)
!2178 = !DILocation(line: 722, column: 20, scope: !2172)
!2179 = !DILocation(line: 724, column: 20, scope: !2172)
!2180 = !DILocation(line: 722, column: 10, scope: !2172)
!2181 = !DILocation(line: 725, column: 20, scope: !2172)
!2182 = !DILocation(line: 728, column: 20, scope: !2172)
!2183 = !DILocation(line: 725, column: 10, scope: !2172)
!2184 = !DILocation(line: 730, column: 4, scope: !2142)
!2185 = !DILocation(line: 732, column: 8, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 732, column: 8)
!2187 = !DILocation(line: 732, column: 14, scope: !2186)
!2188 = !DILocation(line: 732, column: 17, scope: !2186)
!2189 = !DILocation(line: 732, column: 30, scope: !2186)
!2190 = !DILocation(line: 732, column: 34, scope: !2186)
!2191 = !DILocation(line: 732, column: 37, scope: !2186)
!2192 = !DILocation(line: 732, column: 57, scope: !2186)
!2193 = !DILocation(line: 732, column: 55, scope: !2186)
!2194 = !DILocation(line: 732, column: 8, scope: !2125)
!2195 = !DILocation(line: 733, column: 17, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 732, column: 71)
!2197 = !DILocation(line: 736, column: 17, scope: !2196)
!2198 = !DILocation(line: 736, column: 27, scope: !2196)
!2199 = !DILocation(line: 737, column: 17, scope: !2196)
!2200 = !DILocation(line: 737, column: 31, scope: !2196)
!2201 = !DILocation(line: 737, column: 46, scope: !2196)
!2202 = !DILocation(line: 737, column: 44, scope: !2196)
!2203 = !DILocation(line: 733, column: 7, scope: !2196)
!2204 = !DILocation(line: 738, column: 4, scope: !2196)
!2205 = !DILocation(line: 739, column: 12, scope: !2125)
!2206 = !DILocation(line: 739, column: 4, scope: !2125)
!2207 = !DILocation(line: 740, column: 9, scope: !2125)
!2208 = !DILocation(line: 740, column: 4, scope: !2125)
!2209 = distinct !DISubprogram(name: "panic", scope: !3, file: !3, line: 746, type: !2210, scopeLine: 747, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !33}
!2212 = !DILocalVariable(name: "s", arg: 1, scope: !2209, file: !3, line: 746, type: !33)
!2213 = !DILocation(line: 746, column: 26, scope: !2209)
!2214 = !DILocation(line: 748, column: 14, scope: !2209)
!2215 = !DILocation(line: 753, column: 14, scope: !2209)
!2216 = !DILocation(line: 753, column: 24, scope: !2209)
!2217 = !DILocation(line: 748, column: 4, scope: !2209)
!2218 = !DILocation(line: 754, column: 4, scope: !2209)
!2219 = !DILocation(line: 755, column: 4, scope: !2209)
!2220 = distinct !DISubprogram(name: "containsDubiousChars", scope: !3, file: !3, line: 1091, type: !2221, scopeLine: 1092, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!6, !8}
!2223 = !DILocalVariable(name: "name", arg: 1, scope: !2220, file: !3, line: 1091, type: !8)
!2224 = !DILocation(line: 1091, column: 35, scope: !2220)
!2225 = !DILocation(line: 1097, column: 4, scope: !2220)
!2226 = distinct !DISubprogram(name: "fileExists", scope: !3, file: !3, line: 948, type: !2221, scopeLine: 949, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2227 = !DILocalVariable(name: "name", arg: 1, scope: !2226, file: !3, line: 948, type: !8)
!2228 = !DILocation(line: 948, column: 25, scope: !2226)
!2229 = !DILocalVariable(name: "tmp", scope: !2226, file: !3, line: 950, type: !82)
!2230 = !DILocation(line: 950, column: 10, scope: !2226)
!2231 = !DILocation(line: 950, column: 26, scope: !2226)
!2232 = !DILocation(line: 950, column: 18, scope: !2226)
!2233 = !DILocalVariable(name: "exists", scope: !2226, file: !3, line: 951, type: !6)
!2234 = !DILocation(line: 951, column: 9, scope: !2226)
!2235 = !DILocation(line: 951, column: 19, scope: !2226)
!2236 = !DILocation(line: 951, column: 23, scope: !2226)
!2237 = !DILocation(line: 951, column: 18, scope: !2226)
!2238 = !DILocation(line: 952, column: 8, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 952, column: 8)
!2240 = !DILocation(line: 952, column: 12, scope: !2239)
!2241 = !DILocation(line: 952, column: 8, scope: !2226)
!2242 = !DILocation(line: 952, column: 30, scope: !2239)
!2243 = !DILocation(line: 952, column: 21, scope: !2239)
!2244 = !DILocation(line: 953, column: 11, scope: !2226)
!2245 = !DILocation(line: 953, column: 4, scope: !2226)
!2246 = distinct !DISubprogram(name: "hasSuffix", scope: !3, file: !3, line: 1118, type: !2247, scopeLine: 1119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!6, !8, !33}
!2249 = !DILocalVariable(name: "s", arg: 1, scope: !2246, file: !3, line: 1118, type: !8)
!2250 = !DILocation(line: 1118, column: 24, scope: !2246)
!2251 = !DILocalVariable(name: "suffix", arg: 2, scope: !2246, file: !3, line: 1118, type: !33)
!2252 = !DILocation(line: 1118, column: 39, scope: !2246)
!2253 = !DILocalVariable(name: "ns", scope: !2246, file: !3, line: 1120, type: !12)
!2254 = !DILocation(line: 1120, column: 10, scope: !2246)
!2255 = !DILocation(line: 1120, column: 22, scope: !2246)
!2256 = !DILocation(line: 1120, column: 15, scope: !2246)
!2257 = !DILocalVariable(name: "nx", scope: !2246, file: !3, line: 1121, type: !12)
!2258 = !DILocation(line: 1121, column: 10, scope: !2246)
!2259 = !DILocation(line: 1121, column: 22, scope: !2246)
!2260 = !DILocation(line: 1121, column: 15, scope: !2246)
!2261 = !DILocation(line: 1122, column: 8, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 1122, column: 8)
!2263 = !DILocation(line: 1122, column: 13, scope: !2262)
!2264 = !DILocation(line: 1122, column: 11, scope: !2262)
!2265 = !DILocation(line: 1122, column: 8, scope: !2246)
!2266 = !DILocation(line: 1122, column: 17, scope: !2262)
!2267 = !DILocation(line: 1123, column: 15, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 1123, column: 8)
!2269 = !DILocation(line: 1123, column: 19, scope: !2268)
!2270 = !DILocation(line: 1123, column: 17, scope: !2268)
!2271 = !DILocation(line: 1123, column: 24, scope: !2268)
!2272 = !DILocation(line: 1123, column: 22, scope: !2268)
!2273 = !DILocation(line: 1123, column: 28, scope: !2268)
!2274 = !DILocation(line: 1123, column: 8, scope: !2268)
!2275 = !DILocation(line: 1123, column: 36, scope: !2268)
!2276 = !DILocation(line: 1123, column: 8, scope: !2246)
!2277 = !DILocation(line: 1123, column: 42, scope: !2268)
!2278 = !DILocation(line: 1124, column: 4, scope: !2246)
!2279 = !DILocation(line: 1125, column: 1, scope: !2246)
!2280 = distinct !DISubprogram(name: "notAStandardFile", scope: !3, file: !3, line: 989, type: !2221, scopeLine: 990, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2281 = !DILocalVariable(name: "name", arg: 1, scope: !2280, file: !3, line: 989, type: !8)
!2282 = !DILocation(line: 989, column: 31, scope: !2280)
!2283 = !DILocalVariable(name: "i", scope: !2280, file: !3, line: 991, type: !361)
!2284 = !DILocation(line: 991, column: 19, scope: !2280)
!2285 = !DILocalVariable(name: "statBuf", scope: !2280, file: !3, line: 992, type: !302)
!2286 = !DILocation(line: 992, column: 19, scope: !2280)
!2287 = !DILocation(line: 994, column: 19, scope: !2280)
!2288 = !DILocation(line: 994, column: 8, scope: !2280)
!2289 = !DILocation(line: 994, column: 6, scope: !2280)
!2290 = !DILocation(line: 995, column: 8, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 995, column: 8)
!2292 = !DILocation(line: 995, column: 10, scope: !2291)
!2293 = !DILocation(line: 995, column: 8, scope: !2280)
!2294 = !DILocation(line: 995, column: 16, scope: !2291)
!2295 = !DILocation(line: 996, column: 8, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 996, column: 8)
!2297 = !DILocation(line: 996, column: 8, scope: !2280)
!2298 = !DILocation(line: 996, column: 37, scope: !2296)
!2299 = !DILocation(line: 997, column: 4, scope: !2280)
!2300 = !DILocation(line: 998, column: 1, scope: !2280)
!2301 = distinct !DISubprogram(name: "countHardLinks", scope: !3, file: !3, line: 1006, type: !2302, scopeLine: 1007, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!12, !8}
!2304 = !DILocalVariable(name: "name", arg: 1, scope: !2301, file: !3, line: 1006, type: !8)
!2305 = !DILocation(line: 1006, column: 30, scope: !2301)
!2306 = !DILocalVariable(name: "i", scope: !2301, file: !3, line: 1008, type: !361)
!2307 = !DILocation(line: 1008, column: 19, scope: !2301)
!2308 = !DILocalVariable(name: "statBuf", scope: !2301, file: !3, line: 1009, type: !302)
!2309 = !DILocation(line: 1009, column: 19, scope: !2301)
!2310 = !DILocation(line: 1011, column: 19, scope: !2301)
!2311 = !DILocation(line: 1011, column: 8, scope: !2301)
!2312 = !DILocation(line: 1011, column: 6, scope: !2301)
!2313 = !DILocation(line: 1012, column: 8, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 1012, column: 8)
!2315 = !DILocation(line: 1012, column: 10, scope: !2314)
!2316 = !DILocation(line: 1012, column: 8, scope: !2301)
!2317 = !DILocation(line: 1012, column: 16, scope: !2314)
!2318 = !DILocation(line: 1013, column: 20, scope: !2301)
!2319 = !DILocation(line: 1013, column: 12, scope: !2301)
!2320 = !DILocation(line: 1013, column: 29, scope: !2301)
!2321 = !DILocation(line: 1013, column: 4, scope: !2301)
!2322 = !DILocation(line: 1014, column: 1, scope: !2301)
!2323 = distinct !DISubprogram(name: "saveInputFileMetaInfo", scope: !3, file: !3, line: 1046, type: !1218, scopeLine: 1047, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2324 = !DILocalVariable(name: "srcName", arg: 1, scope: !2323, file: !3, line: 1046, type: !8)
!2325 = !DILocation(line: 1046, column: 36, scope: !2323)
!2326 = !DILocalVariable(name: "retVal", scope: !2323, file: !3, line: 1049, type: !361)
!2327 = !DILocation(line: 1049, column: 14, scope: !2323)
!2328 = !DILocation(line: 1051, column: 22, scope: !2323)
!2329 = !DILocation(line: 1051, column: 13, scope: !2323)
!2330 = !DILocation(line: 1051, column: 11, scope: !2323)
!2331 = !DILocation(line: 1052, column: 4, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 1052, column: 4)
!2333 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 1052, column: 4)
!2334 = !DILocation(line: 1052, column: 4, scope: !2333)
!2335 = !DILocation(line: 1054, column: 1, scope: !2323)
!2336 = distinct !DISubprogram(name: "fopen_output_safely", scope: !3, file: !3, line: 968, type: !2337, scopeLine: 969, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!82, !8, !268}
!2339 = !DILocalVariable(name: "name", arg: 1, scope: !2336, file: !3, line: 968, type: !8)
!2340 = !DILocation(line: 968, column: 35, scope: !2336)
!2341 = !DILocalVariable(name: "mode", arg: 2, scope: !2336, file: !3, line: 968, type: !268)
!2342 = !DILocation(line: 968, column: 53, scope: !2336)
!2343 = !DILocalVariable(name: "fp", scope: !2336, file: !3, line: 971, type: !82)
!2344 = !DILocation(line: 971, column: 14, scope: !2336)
!2345 = !DILocalVariable(name: "fh", scope: !2336, file: !3, line: 972, type: !361)
!2346 = !DILocation(line: 972, column: 14, scope: !2336)
!2347 = !DILocation(line: 973, column: 14, scope: !2336)
!2348 = !DILocation(line: 973, column: 9, scope: !2336)
!2349 = !DILocation(line: 973, column: 7, scope: !2336)
!2350 = !DILocation(line: 974, column: 8, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 974, column: 8)
!2352 = !DILocation(line: 974, column: 11, scope: !2351)
!2353 = !DILocation(line: 974, column: 8, scope: !2336)
!2354 = !DILocation(line: 974, column: 18, scope: !2351)
!2355 = !DILocation(line: 975, column: 16, scope: !2336)
!2356 = !DILocation(line: 975, column: 20, scope: !2336)
!2357 = !DILocation(line: 975, column: 9, scope: !2336)
!2358 = !DILocation(line: 975, column: 7, scope: !2336)
!2359 = !DILocation(line: 976, column: 8, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 976, column: 8)
!2361 = !DILocation(line: 976, column: 11, scope: !2360)
!2362 = !DILocation(line: 976, column: 8, scope: !2336)
!2363 = !DILocation(line: 976, column: 26, scope: !2360)
!2364 = !DILocation(line: 976, column: 20, scope: !2360)
!2365 = !DILocation(line: 977, column: 11, scope: !2336)
!2366 = !DILocation(line: 977, column: 4, scope: !2336)
!2367 = !DILocation(line: 981, column: 1, scope: !2336)
!2368 = distinct !DISubprogram(name: "pad", scope: !3, file: !3, line: 916, type: !1218, scopeLine: 917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2369 = !DILocalVariable(name: "s", arg: 1, scope: !2368, file: !3, line: 916, type: !8)
!2370 = !DILocation(line: 916, column: 18, scope: !2368)
!2371 = !DILocalVariable(name: "i", scope: !2368, file: !3, line: 918, type: !12)
!2372 = !DILocation(line: 918, column: 10, scope: !2368)
!2373 = !DILocation(line: 919, column: 23, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 919, column: 9)
!2375 = !DILocation(line: 919, column: 16, scope: !2374)
!2376 = !DILocation(line: 919, column: 29, scope: !2374)
!2377 = !DILocation(line: 919, column: 26, scope: !2374)
!2378 = !DILocation(line: 919, column: 9, scope: !2368)
!2379 = !DILocation(line: 919, column: 47, scope: !2374)
!2380 = !DILocation(line: 920, column: 11, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 920, column: 4)
!2382 = !DILocation(line: 920, column: 9, scope: !2381)
!2383 = !DILocation(line: 920, column: 16, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 920, column: 4)
!2385 = !DILocation(line: 920, column: 21, scope: !2384)
!2386 = !DILocation(line: 920, column: 53, scope: !2384)
!2387 = !DILocation(line: 920, column: 46, scope: !2384)
!2388 = !DILocation(line: 920, column: 37, scope: !2384)
!2389 = !DILocation(line: 920, column: 18, scope: !2384)
!2390 = !DILocation(line: 920, column: 4, scope: !2381)
!2391 = !DILocation(line: 921, column: 17, scope: !2384)
!2392 = !DILocation(line: 921, column: 7, scope: !2384)
!2393 = !DILocation(line: 920, column: 58, scope: !2384)
!2394 = !DILocation(line: 920, column: 4, scope: !2384)
!2395 = distinct !{!2395, !2390, !2396, !424}
!2396 = !DILocation(line: 921, column: 29, scope: !2381)
!2397 = !DILocation(line: 922, column: 1, scope: !2368)
!2398 = distinct !DISubprogram(name: "compressStream", scope: !3, file: !3, line: 329, type: !2399, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{null, !82, !82}
!2401 = !DILocalVariable(name: "stream", arg: 1, scope: !2398, file: !3, line: 329, type: !82)
!2402 = !DILocation(line: 329, column: 29, scope: !2398)
!2403 = !DILocalVariable(name: "zStream", arg: 2, scope: !2398, file: !3, line: 329, type: !82)
!2404 = !DILocation(line: 329, column: 43, scope: !2398)
!2405 = !DILocalVariable(name: "bzf", scope: !2398, file: !3, line: 331, type: !2406)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "BZFILE", file: !2408, line: 137, baseType: null)
!2408 = !DIFile(filename: "./bzlib.h", directory: "/home/wenhongbo/code/opt-searcher/llvm_runner/data/bzip2")
!2409 = !DILocation(line: 331, column: 12, scope: !2398)
!2410 = !DILocalVariable(name: "ibuf", scope: !2398, file: !3, line: 332, type: !2411)
!2411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 40000, elements: !2412)
!2412 = !{!2413}
!2413 = !DISubrange(count: 5000)
!2414 = !DILocation(line: 332, column: 12, scope: !2398)
!2415 = !DILocalVariable(name: "nIbuf", scope: !2398, file: !3, line: 333, type: !12)
!2416 = !DILocation(line: 333, column: 12, scope: !2398)
!2417 = !DILocalVariable(name: "nbytes_in_lo32", scope: !2398, file: !3, line: 334, type: !2418)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "UInt32", file: !3, line: 165, baseType: !25)
!2419 = !DILocation(line: 334, column: 12, scope: !2398)
!2420 = !DILocalVariable(name: "nbytes_in_hi32", scope: !2398, file: !3, line: 334, type: !2418)
!2421 = !DILocation(line: 334, column: 28, scope: !2398)
!2422 = !DILocalVariable(name: "nbytes_out_lo32", scope: !2398, file: !3, line: 335, type: !2418)
!2423 = !DILocation(line: 335, column: 12, scope: !2398)
!2424 = !DILocalVariable(name: "nbytes_out_hi32", scope: !2398, file: !3, line: 335, type: !2418)
!2425 = !DILocation(line: 335, column: 29, scope: !2398)
!2426 = !DILocalVariable(name: "bzerr", scope: !2398, file: !3, line: 336, type: !12)
!2427 = !DILocation(line: 336, column: 12, scope: !2398)
!2428 = !DILocalVariable(name: "bzerr_dummy", scope: !2398, file: !3, line: 336, type: !12)
!2429 = !DILocation(line: 336, column: 19, scope: !2398)
!2430 = !DILocalVariable(name: "ret", scope: !2398, file: !3, line: 336, type: !12)
!2431 = !DILocation(line: 336, column: 32, scope: !2398)
!2432 = !DILocation(line: 341, column: 8, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 341, column: 8)
!2434 = !DILocation(line: 341, column: 8, scope: !2398)
!2435 = !DILocation(line: 341, column: 24, scope: !2433)
!2436 = !DILocation(line: 342, column: 8, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 342, column: 8)
!2438 = !DILocation(line: 342, column: 8, scope: !2398)
!2439 = !DILocation(line: 342, column: 25, scope: !2437)
!2440 = !DILocation(line: 344, column: 36, scope: !2398)
!2441 = !DILocation(line: 345, column: 28, scope: !2398)
!2442 = !DILocation(line: 345, column: 43, scope: !2398)
!2443 = !DILocation(line: 345, column: 54, scope: !2398)
!2444 = !DILocation(line: 344, column: 10, scope: !2398)
!2445 = !DILocation(line: 344, column: 8, scope: !2398)
!2446 = !DILocation(line: 346, column: 8, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 346, column: 8)
!2448 = !DILocation(line: 346, column: 14, scope: !2447)
!2449 = !DILocation(line: 346, column: 8, scope: !2398)
!2450 = !DILocation(line: 346, column: 24, scope: !2447)
!2451 = !DILocation(line: 348, column: 8, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 348, column: 8)
!2453 = !DILocation(line: 348, column: 18, scope: !2452)
!2454 = !DILocation(line: 348, column: 8, scope: !2398)
!2455 = !DILocation(line: 348, column: 34, scope: !2452)
!2456 = !DILocation(line: 348, column: 24, scope: !2452)
!2457 = !DILocation(line: 350, column: 4, scope: !2398)
!2458 = !DILocation(line: 352, column: 18, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 352, column: 11)
!2460 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 350, column: 17)
!2461 = !DILocation(line: 352, column: 11, scope: !2459)
!2462 = !DILocation(line: 352, column: 11, scope: !2460)
!2463 = !DILocation(line: 352, column: 27, scope: !2459)
!2464 = !DILocation(line: 353, column: 23, scope: !2460)
!2465 = !DILocation(line: 353, column: 50, scope: !2460)
!2466 = !DILocation(line: 353, column: 15, scope: !2460)
!2467 = !DILocation(line: 353, column: 13, scope: !2460)
!2468 = !DILocation(line: 354, column: 11, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 354, column: 11)
!2470 = !DILocation(line: 354, column: 11, scope: !2460)
!2471 = !DILocation(line: 354, column: 27, scope: !2469)
!2472 = !DILocation(line: 355, column: 11, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 355, column: 11)
!2474 = !DILocation(line: 355, column: 17, scope: !2473)
!2475 = !DILocation(line: 355, column: 11, scope: !2460)
!2476 = !DILocation(line: 355, column: 44, scope: !2473)
!2477 = !DILocation(line: 355, column: 56, scope: !2473)
!2478 = !DILocation(line: 355, column: 62, scope: !2473)
!2479 = !DILocation(line: 355, column: 22, scope: !2473)
!2480 = !DILocation(line: 356, column: 11, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 356, column: 11)
!2482 = !DILocation(line: 356, column: 17, scope: !2481)
!2483 = !DILocation(line: 356, column: 11, scope: !2460)
!2484 = !DILocation(line: 356, column: 27, scope: !2481)
!2485 = distinct !{!2485, !2457, !2486}
!2486 = !DILocation(line: 358, column: 4, scope: !2398)
!2487 = !DILocation(line: 360, column: 33, scope: !2398)
!2488 = !DILocation(line: 360, column: 4, scope: !2398)
!2489 = !DILocation(line: 363, column: 8, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 363, column: 8)
!2491 = !DILocation(line: 363, column: 14, scope: !2490)
!2492 = !DILocation(line: 363, column: 8, scope: !2398)
!2493 = !DILocation(line: 363, column: 24, scope: !2490)
!2494 = !DILocation(line: 365, column: 8, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 365, column: 8)
!2496 = !DILocation(line: 365, column: 8, scope: !2398)
!2497 = !DILocation(line: 365, column: 25, scope: !2495)
!2498 = !DILocation(line: 366, column: 19, scope: !2398)
!2499 = !DILocation(line: 366, column: 10, scope: !2398)
!2500 = !DILocation(line: 366, column: 8, scope: !2398)
!2501 = !DILocation(line: 367, column: 8, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 367, column: 8)
!2503 = !DILocation(line: 367, column: 12, scope: !2502)
!2504 = !DILocation(line: 367, column: 8, scope: !2398)
!2505 = !DILocation(line: 367, column: 20, scope: !2502)
!2506 = !DILocation(line: 368, column: 8, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 368, column: 8)
!2508 = !DILocation(line: 368, column: 19, scope: !2507)
!2509 = !DILocation(line: 368, column: 16, scope: !2507)
!2510 = !DILocation(line: 368, column: 8, scope: !2398)
!2511 = !DILocalVariable(name: "fd", scope: !2512, file: !3, line: 369, type: !12)
!2512 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 368, column: 27)
!2513 = !DILocation(line: 369, column: 13, scope: !2512)
!2514 = !DILocation(line: 369, column: 27, scope: !2512)
!2515 = !DILocation(line: 369, column: 18, scope: !2512)
!2516 = !DILocation(line: 370, column: 11, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 370, column: 11)
!2518 = !DILocation(line: 370, column: 14, scope: !2517)
!2519 = !DILocation(line: 370, column: 11, scope: !2512)
!2520 = !DILocation(line: 370, column: 19, scope: !2517)
!2521 = !DILocation(line: 371, column: 40, scope: !2512)
!2522 = !DILocation(line: 371, column: 7, scope: !2512)
!2523 = !DILocation(line: 372, column: 22, scope: !2512)
!2524 = !DILocation(line: 372, column: 13, scope: !2512)
!2525 = !DILocation(line: 372, column: 11, scope: !2512)
!2526 = !DILocation(line: 373, column: 30, scope: !2512)
!2527 = !DILocation(line: 374, column: 11, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 374, column: 11)
!2529 = !DILocation(line: 374, column: 15, scope: !2528)
!2530 = !DILocation(line: 374, column: 11, scope: !2512)
!2531 = !DILocation(line: 374, column: 23, scope: !2528)
!2532 = !DILocation(line: 375, column: 4, scope: !2512)
!2533 = !DILocation(line: 376, column: 27, scope: !2398)
!2534 = !DILocation(line: 377, column: 8, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 377, column: 8)
!2536 = !DILocation(line: 377, column: 8, scope: !2398)
!2537 = !DILocation(line: 377, column: 24, scope: !2535)
!2538 = !DILocation(line: 378, column: 19, scope: !2398)
!2539 = !DILocation(line: 378, column: 10, scope: !2398)
!2540 = !DILocation(line: 378, column: 8, scope: !2398)
!2541 = !DILocation(line: 379, column: 8, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 379, column: 8)
!2543 = !DILocation(line: 379, column: 12, scope: !2542)
!2544 = !DILocation(line: 379, column: 8, scope: !2398)
!2545 = !DILocation(line: 379, column: 20, scope: !2542)
!2546 = !DILocation(line: 381, column: 8, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 381, column: 8)
!2548 = !DILocation(line: 381, column: 18, scope: !2547)
!2549 = !DILocation(line: 381, column: 8, scope: !2398)
!2550 = !DILocation(line: 382, column: 11, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 382, column: 11)
!2552 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 381, column: 24)
!2553 = !DILocation(line: 382, column: 26, scope: !2551)
!2554 = !DILocation(line: 382, column: 31, scope: !2551)
!2555 = !DILocation(line: 382, column: 34, scope: !2551)
!2556 = !DILocation(line: 382, column: 49, scope: !2551)
!2557 = !DILocation(line: 382, column: 11, scope: !2552)
!2558 = !DILocation(line: 383, column: 13, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 382, column: 55)
!2560 = !DILocation(line: 383, column: 3, scope: !2559)
!2561 = !DILocation(line: 384, column: 7, scope: !2559)
!2562 = !DILocalVariable(name: "buf_nin", scope: !2563, file: !3, line: 385, type: !2564)
!2563 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 384, column: 14)
!2564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !239)
!2565 = !DILocation(line: 385, column: 10, scope: !2563)
!2566 = !DILocalVariable(name: "buf_nout", scope: !2563, file: !3, line: 385, type: !2564)
!2567 = !DILocation(line: 385, column: 23, scope: !2563)
!2568 = !DILocalVariable(name: "nbytes_in", scope: !2563, file: !3, line: 386, type: !2569)
!2569 = !DIDerivedType(tag: DW_TAG_typedef, name: "UInt64", file: !3, line: 234, baseType: !2570)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 233, size: 64, elements: !2571)
!2571 = !{!2572}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2570, file: !3, line: 233, baseType: !2573, size: 64)
!2573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !206)
!2574 = !DILocation(line: 386, column: 10, scope: !2563)
!2575 = !DILocalVariable(name: "nbytes_out", scope: !2563, file: !3, line: 386, type: !2569)
!2576 = !DILocation(line: 386, column: 23, scope: !2563)
!2577 = !DILocalVariable(name: "nbytes_in_d", scope: !2563, file: !3, line: 387, type: !27)
!2578 = !DILocation(line: 387, column: 10, scope: !2563)
!2579 = !DILocalVariable(name: "nbytes_out_d", scope: !2563, file: !3, line: 387, type: !27)
!2580 = !DILocation(line: 387, column: 23, scope: !2563)
!2581 = !DILocation(line: 389, column: 11, scope: !2563)
!2582 = !DILocation(line: 389, column: 27, scope: !2563)
!2583 = !DILocation(line: 388, column: 3, scope: !2563)
!2584 = !DILocation(line: 391, column: 11, scope: !2563)
!2585 = !DILocation(line: 391, column: 28, scope: !2563)
!2586 = !DILocation(line: 390, column: 3, scope: !2563)
!2587 = !DILocation(line: 392, column: 18, scope: !2563)
!2588 = !DILocation(line: 392, column: 16, scope: !2563)
!2589 = !DILocation(line: 393, column: 18, scope: !2563)
!2590 = !DILocation(line: 393, column: 16, scope: !2563)
!2591 = !DILocation(line: 394, column: 20, scope: !2563)
!2592 = !DILocation(line: 394, column: 3, scope: !2563)
!2593 = !DILocation(line: 395, column: 20, scope: !2563)
!2594 = !DILocation(line: 395, column: 3, scope: !2563)
!2595 = !DILocation(line: 396, column: 13, scope: !2563)
!2596 = !DILocation(line: 398, column: 6, scope: !2563)
!2597 = !DILocation(line: 398, column: 20, scope: !2563)
!2598 = !DILocation(line: 398, column: 18, scope: !2563)
!2599 = !DILocation(line: 399, column: 13, scope: !2563)
!2600 = !DILocation(line: 399, column: 11, scope: !2563)
!2601 = !DILocation(line: 399, column: 29, scope: !2563)
!2602 = !DILocation(line: 399, column: 27, scope: !2563)
!2603 = !DILocation(line: 400, column: 21, scope: !2563)
!2604 = !DILocation(line: 400, column: 36, scope: !2563)
!2605 = !DILocation(line: 400, column: 34, scope: !2563)
!2606 = !DILocation(line: 400, column: 19, scope: !2563)
!2607 = !DILocation(line: 400, column: 12, scope: !2563)
!2608 = !DILocation(line: 401, column: 6, scope: !2563)
!2609 = !DILocation(line: 402, column: 6, scope: !2563)
!2610 = !DILocation(line: 396, column: 3, scope: !2563)
!2611 = !DILocation(line: 405, column: 4, scope: !2552)
!2612 = !DILocation(line: 407, column: 4, scope: !2398)
!2613 = !DILabel(scope: !2398, name: "errhandler", file: !3, line: 409)
!2614 = !DILocation(line: 409, column: 4, scope: !2398)
!2615 = !DILocation(line: 410, column: 39, scope: !2398)
!2616 = !DILocation(line: 410, column: 4, scope: !2398)
!2617 = !DILocation(line: 413, column: 12, scope: !2398)
!2618 = !DILocation(line: 413, column: 4, scope: !2398)
!2619 = !DILocation(line: 415, column: 10, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 413, column: 19)
!2621 = !DILocation(line: 417, column: 10, scope: !2620)
!2622 = !DILabel(scope: !2620, name: "errhandler_io", file: !3, line: 419)
!2623 = !DILocation(line: 419, column: 10, scope: !2620)
!2624 = !DILocation(line: 420, column: 10, scope: !2620)
!2625 = !DILocation(line: 422, column: 10, scope: !2620)
!2626 = distinct !DISubprogram(name: "applySavedTimeInfoToOutputFile", scope: !3, file: !3, line: 1058, type: !1218, scopeLine: 1059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2627 = !DILocalVariable(name: "dstName", arg: 1, scope: !2626, file: !3, line: 1058, type: !8)
!2628 = !DILocation(line: 1058, column: 45, scope: !2626)
!2629 = !DILocalVariable(name: "retVal", scope: !2626, file: !3, line: 1061, type: !361)
!2630 = !DILocation(line: 1061, column: 19, scope: !2626)
!2631 = !DILocalVariable(name: "uTimBuf", scope: !2626, file: !3, line: 1062, type: !2632)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utimbuf", file: !2633, line: 12, size: 128, elements: !2634)
!2633 = !DIFile(filename: "/opt/riscv/riscv32-unknown-elf/include/sys/utime.h", directory: "")
!2634 = !{!2635, !2636}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "actime", scope: !2632, file: !2633, line: 14, baseType: !335, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "modtime", scope: !2632, file: !2633, line: 15, baseType: !335, size: 64, offset: 64)
!2637 = !DILocation(line: 1062, column: 19, scope: !2626)
!2638 = !DILocation(line: 1064, column: 34, scope: !2626)
!2639 = !DILocation(line: 1064, column: 12, scope: !2626)
!2640 = !DILocation(line: 1064, column: 19, scope: !2626)
!2641 = !DILocation(line: 1065, column: 35, scope: !2626)
!2642 = !DILocation(line: 1065, column: 12, scope: !2626)
!2643 = !DILocation(line: 1065, column: 20, scope: !2626)
!2644 = !DILocation(line: 1067, column: 21, scope: !2626)
!2645 = !DILocation(line: 1067, column: 13, scope: !2626)
!2646 = !DILocation(line: 1067, column: 11, scope: !2626)
!2647 = !DILocation(line: 1068, column: 4, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 1068, column: 4)
!2649 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 1068, column: 4)
!2650 = !DILocation(line: 1068, column: 4, scope: !2649)
!2651 = !DILocation(line: 1070, column: 1, scope: !2626)
!2652 = distinct !DISubprogram(name: "ioError", scope: !3, file: !3, line: 791, type: !237, scopeLine: 792, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2653 = !DILocation(line: 793, column: 14, scope: !2652)
!2654 = !DILocation(line: 796, column: 14, scope: !2652)
!2655 = !DILocation(line: 793, column: 4, scope: !2652)
!2656 = !DILocation(line: 797, column: 13, scope: !2652)
!2657 = !DILocation(line: 797, column: 4, scope: !2652)
!2658 = !DILocation(line: 798, column: 4, scope: !2652)
!2659 = !DILocation(line: 799, column: 4, scope: !2652)
!2660 = distinct !DISubprogram(name: "myfeof", scope: !3, file: !3, line: 318, type: !2661, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!6, !82}
!2663 = !DILocalVariable(name: "f", arg: 1, scope: !2660, file: !3, line: 318, type: !82)
!2664 = !DILocation(line: 318, column: 21, scope: !2660)
!2665 = !DILocalVariable(name: "c", scope: !2660, file: !3, line: 320, type: !12)
!2666 = !DILocation(line: 320, column: 10, scope: !2660)
!2667 = !DILocation(line: 320, column: 22, scope: !2660)
!2668 = !DILocation(line: 320, column: 14, scope: !2660)
!2669 = !DILocation(line: 321, column: 8, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 321, column: 8)
!2671 = !DILocation(line: 321, column: 10, scope: !2670)
!2672 = !DILocation(line: 321, column: 8, scope: !2660)
!2673 = !DILocation(line: 321, column: 18, scope: !2670)
!2674 = !DILocation(line: 322, column: 13, scope: !2660)
!2675 = !DILocation(line: 322, column: 16, scope: !2660)
!2676 = !DILocation(line: 322, column: 4, scope: !2660)
!2677 = !DILocation(line: 323, column: 4, scope: !2660)
!2678 = !DILocation(line: 324, column: 1, scope: !2660)
!2679 = distinct !DISubprogram(name: "applySavedFileAttrToOutputFile", scope: !3, file: !3, line: 1073, type: !998, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2680 = !DILocalVariable(name: "fd", arg: 1, scope: !2679, file: !3, line: 1073, type: !361)
!2681 = !DILocation(line: 1073, column: 49, scope: !2679)
!2682 = !DILocalVariable(name: "retVal", scope: !2679, file: !3, line: 1076, type: !361)
!2683 = !DILocation(line: 1076, column: 14, scope: !2679)
!2684 = !DILocation(line: 1078, column: 22, scope: !2679)
!2685 = !DILocation(line: 1078, column: 39, scope: !2679)
!2686 = !DILocation(line: 1078, column: 13, scope: !2679)
!2687 = !DILocation(line: 1078, column: 11, scope: !2679)
!2688 = !DILocation(line: 1079, column: 4, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 1079, column: 4)
!2690 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 1079, column: 4)
!2691 = !DILocation(line: 1079, column: 4, scope: !2690)
!2692 = !DILocation(line: 1081, column: 20, scope: !2679)
!2693 = !DILocation(line: 1081, column: 37, scope: !2679)
!2694 = !DILocation(line: 1081, column: 58, scope: !2679)
!2695 = !DILocation(line: 1081, column: 11, scope: !2679)
!2696 = !DILocation(line: 1086, column: 1, scope: !2679)
!2697 = distinct !DISubprogram(name: "uInt64_from_UInt32s", scope: !3, file: !3, line: 238, type: !2698, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{null, !2700, !2418, !2418}
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 32)
!2701 = !DILocalVariable(name: "n", arg: 1, scope: !2697, file: !3, line: 238, type: !2700)
!2702 = !DILocation(line: 238, column: 36, scope: !2697)
!2703 = !DILocalVariable(name: "lo32", arg: 2, scope: !2697, file: !3, line: 238, type: !2418)
!2704 = !DILocation(line: 238, column: 46, scope: !2697)
!2705 = !DILocalVariable(name: "hi32", arg: 3, scope: !2697, file: !3, line: 238, type: !2418)
!2706 = !DILocation(line: 238, column: 59, scope: !2697)
!2707 = !DILocation(line: 240, column: 23, scope: !2697)
!2708 = !DILocation(line: 240, column: 28, scope: !2697)
!2709 = !DILocation(line: 240, column: 35, scope: !2697)
!2710 = !DILocation(line: 240, column: 14, scope: !2697)
!2711 = !DILocation(line: 240, column: 4, scope: !2697)
!2712 = !DILocation(line: 240, column: 7, scope: !2697)
!2713 = !DILocation(line: 240, column: 12, scope: !2697)
!2714 = !DILocation(line: 241, column: 23, scope: !2697)
!2715 = !DILocation(line: 241, column: 28, scope: !2697)
!2716 = !DILocation(line: 241, column: 35, scope: !2697)
!2717 = !DILocation(line: 241, column: 14, scope: !2697)
!2718 = !DILocation(line: 241, column: 4, scope: !2697)
!2719 = !DILocation(line: 241, column: 7, scope: !2697)
!2720 = !DILocation(line: 241, column: 12, scope: !2697)
!2721 = !DILocation(line: 242, column: 23, scope: !2697)
!2722 = !DILocation(line: 242, column: 28, scope: !2697)
!2723 = !DILocation(line: 242, column: 35, scope: !2697)
!2724 = !DILocation(line: 242, column: 14, scope: !2697)
!2725 = !DILocation(line: 242, column: 4, scope: !2697)
!2726 = !DILocation(line: 242, column: 7, scope: !2697)
!2727 = !DILocation(line: 242, column: 12, scope: !2697)
!2728 = !DILocation(line: 243, column: 23, scope: !2697)
!2729 = !DILocation(line: 243, column: 35, scope: !2697)
!2730 = !DILocation(line: 243, column: 14, scope: !2697)
!2731 = !DILocation(line: 243, column: 4, scope: !2697)
!2732 = !DILocation(line: 243, column: 7, scope: !2697)
!2733 = !DILocation(line: 243, column: 12, scope: !2697)
!2734 = !DILocation(line: 244, column: 23, scope: !2697)
!2735 = !DILocation(line: 244, column: 28, scope: !2697)
!2736 = !DILocation(line: 244, column: 35, scope: !2697)
!2737 = !DILocation(line: 244, column: 14, scope: !2697)
!2738 = !DILocation(line: 244, column: 4, scope: !2697)
!2739 = !DILocation(line: 244, column: 7, scope: !2697)
!2740 = !DILocation(line: 244, column: 12, scope: !2697)
!2741 = !DILocation(line: 245, column: 23, scope: !2697)
!2742 = !DILocation(line: 245, column: 28, scope: !2697)
!2743 = !DILocation(line: 245, column: 35, scope: !2697)
!2744 = !DILocation(line: 245, column: 14, scope: !2697)
!2745 = !DILocation(line: 245, column: 4, scope: !2697)
!2746 = !DILocation(line: 245, column: 7, scope: !2697)
!2747 = !DILocation(line: 245, column: 12, scope: !2697)
!2748 = !DILocation(line: 246, column: 23, scope: !2697)
!2749 = !DILocation(line: 246, column: 28, scope: !2697)
!2750 = !DILocation(line: 246, column: 35, scope: !2697)
!2751 = !DILocation(line: 246, column: 14, scope: !2697)
!2752 = !DILocation(line: 246, column: 4, scope: !2697)
!2753 = !DILocation(line: 246, column: 7, scope: !2697)
!2754 = !DILocation(line: 246, column: 12, scope: !2697)
!2755 = !DILocation(line: 247, column: 23, scope: !2697)
!2756 = !DILocation(line: 247, column: 35, scope: !2697)
!2757 = !DILocation(line: 247, column: 14, scope: !2697)
!2758 = !DILocation(line: 247, column: 4, scope: !2697)
!2759 = !DILocation(line: 247, column: 7, scope: !2697)
!2760 = !DILocation(line: 247, column: 12, scope: !2697)
!2761 = !DILocation(line: 248, column: 1, scope: !2697)
!2762 = distinct !DISubprogram(name: "uInt64_to_double", scope: !3, file: !3, line: 252, type: !2763, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!27, !2700}
!2765 = !DILocalVariable(name: "n", arg: 1, scope: !2762, file: !3, line: 252, type: !2700)
!2766 = !DILocation(line: 252, column: 35, scope: !2762)
!2767 = !DILocalVariable(name: "i", scope: !2762, file: !3, line: 254, type: !12)
!2768 = !DILocation(line: 254, column: 11, scope: !2762)
!2769 = !DILocalVariable(name: "base", scope: !2762, file: !3, line: 255, type: !27)
!2770 = !DILocation(line: 255, column: 11, scope: !2762)
!2771 = !DILocalVariable(name: "sum", scope: !2762, file: !3, line: 256, type: !27)
!2772 = !DILocation(line: 256, column: 11, scope: !2762)
!2773 = !DILocation(line: 257, column: 11, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 257, column: 4)
!2775 = !DILocation(line: 257, column: 9, scope: !2774)
!2776 = !DILocation(line: 257, column: 16, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 257, column: 4)
!2778 = !DILocation(line: 257, column: 18, scope: !2777)
!2779 = !DILocation(line: 257, column: 4, scope: !2774)
!2780 = !DILocation(line: 258, column: 15, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 257, column: 28)
!2782 = !DILocation(line: 258, column: 31, scope: !2781)
!2783 = !DILocation(line: 258, column: 34, scope: !2781)
!2784 = !DILocation(line: 258, column: 36, scope: !2781)
!2785 = !DILocation(line: 258, column: 22, scope: !2781)
!2786 = !DILocation(line: 258, column: 20, scope: !2781)
!2787 = !DILocation(line: 258, column: 12, scope: !2781)
!2788 = !DILocation(line: 259, column: 12, scope: !2781)
!2789 = !DILocation(line: 260, column: 4, scope: !2781)
!2790 = !DILocation(line: 257, column: 24, scope: !2777)
!2791 = !DILocation(line: 257, column: 4, scope: !2777)
!2792 = distinct !{!2792, !2779, !2793, !424}
!2793 = !DILocation(line: 260, column: 4, scope: !2774)
!2794 = !DILocation(line: 261, column: 11, scope: !2762)
!2795 = !DILocation(line: 261, column: 4, scope: !2762)
!2796 = distinct !DISubprogram(name: "uInt64_toAscii", scope: !3, file: !3, line: 295, type: !2797, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null, !151, !2700}
!2799 = !DILocalVariable(name: "outbuf", arg: 1, scope: !2796, file: !3, line: 295, type: !151)
!2800 = !DILocation(line: 295, column: 29, scope: !2796)
!2801 = !DILocalVariable(name: "n", arg: 2, scope: !2796, file: !3, line: 295, type: !2700)
!2802 = !DILocation(line: 295, column: 45, scope: !2796)
!2803 = !DILocalVariable(name: "i", scope: !2796, file: !3, line: 297, type: !12)
!2804 = !DILocation(line: 297, column: 11, scope: !2796)
!2805 = !DILocalVariable(name: "q", scope: !2796, file: !3, line: 297, type: !12)
!2806 = !DILocation(line: 297, column: 14, scope: !2796)
!2807 = !DILocalVariable(name: "buf", scope: !2796, file: !3, line: 298, type: !2808)
!2808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 256, elements: !239)
!2809 = !DILocation(line: 298, column: 11, scope: !2796)
!2810 = !DILocalVariable(name: "nBuf", scope: !2796, file: !3, line: 299, type: !12)
!2811 = !DILocation(line: 299, column: 11, scope: !2796)
!2812 = !DILocalVariable(name: "n_copy", scope: !2796, file: !3, line: 300, type: !2569)
!2813 = !DILocation(line: 300, column: 11, scope: !2796)
!2814 = !DILocation(line: 300, column: 21, scope: !2796)
!2815 = !DILocation(line: 300, column: 20, scope: !2796)
!2816 = !DILocation(line: 301, column: 4, scope: !2796)
!2817 = !DILocation(line: 302, column: 11, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 301, column: 7)
!2819 = !DILocation(line: 302, column: 9, scope: !2818)
!2820 = !DILocation(line: 303, column: 19, scope: !2818)
!2821 = !DILocation(line: 303, column: 21, scope: !2818)
!2822 = !DILocation(line: 303, column: 11, scope: !2818)
!2823 = !DILocation(line: 303, column: 7, scope: !2818)
!2824 = !DILocation(line: 303, column: 17, scope: !2818)
!2825 = !DILocation(line: 304, column: 11, scope: !2818)
!2826 = !DILocation(line: 305, column: 4, scope: !2818)
!2827 = !DILocation(line: 305, column: 14, scope: !2796)
!2828 = !DILocation(line: 305, column: 13, scope: !2796)
!2829 = distinct !{!2829, !2816, !2830, !424}
!2830 = !DILocation(line: 305, column: 36, scope: !2796)
!2831 = !DILocation(line: 306, column: 4, scope: !2796)
!2832 = !DILocation(line: 306, column: 11, scope: !2796)
!2833 = !DILocation(line: 306, column: 17, scope: !2796)
!2834 = !DILocation(line: 307, column: 11, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 307, column: 4)
!2836 = !DILocation(line: 307, column: 9, scope: !2835)
!2837 = !DILocation(line: 307, column: 16, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 307, column: 4)
!2839 = !DILocation(line: 307, column: 20, scope: !2838)
!2840 = !DILocation(line: 307, column: 18, scope: !2838)
!2841 = !DILocation(line: 307, column: 4, scope: !2835)
!2842 = !DILocation(line: 308, column: 23, scope: !2838)
!2843 = !DILocation(line: 308, column: 28, scope: !2838)
!2844 = !DILocation(line: 308, column: 27, scope: !2838)
!2845 = !DILocation(line: 308, column: 29, scope: !2838)
!2846 = !DILocation(line: 308, column: 19, scope: !2838)
!2847 = !DILocation(line: 308, column: 7, scope: !2838)
!2848 = !DILocation(line: 308, column: 14, scope: !2838)
!2849 = !DILocation(line: 308, column: 17, scope: !2838)
!2850 = !DILocation(line: 307, column: 27, scope: !2838)
!2851 = !DILocation(line: 307, column: 4, scope: !2838)
!2852 = distinct !{!2852, !2841, !2853, !424}
!2853 = !DILocation(line: 308, column: 31, scope: !2835)
!2854 = !DILocation(line: 309, column: 1, scope: !2796)
!2855 = distinct !DISubprogram(name: "configError", scope: !3, file: !3, line: 892, type: !237, scopeLine: 893, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2856 = !DILocation(line: 894, column: 14, scope: !2855)
!2857 = !DILocation(line: 894, column: 4, scope: !2855)
!2858 = !DILocation(line: 900, column: 4, scope: !2855)
!2859 = !DILocation(line: 901, column: 9, scope: !2855)
!2860 = !DILocation(line: 901, column: 4, scope: !2855)
!2861 = distinct !DISubprogram(name: "uInt64_qrm10", scope: !3, file: !3, line: 277, type: !2862, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!12, !2700}
!2864 = !DILocalVariable(name: "n", arg: 1, scope: !2861, file: !3, line: 277, type: !2700)
!2865 = !DILocation(line: 277, column: 30, scope: !2861)
!2866 = !DILocalVariable(name: "rem", scope: !2861, file: !3, line: 279, type: !2418)
!2867 = !DILocation(line: 279, column: 11, scope: !2861)
!2868 = !DILocalVariable(name: "tmp", scope: !2861, file: !3, line: 279, type: !2418)
!2869 = !DILocation(line: 279, column: 16, scope: !2861)
!2870 = !DILocalVariable(name: "i", scope: !2861, file: !3, line: 280, type: !12)
!2871 = !DILocation(line: 280, column: 11, scope: !2861)
!2872 = !DILocation(line: 281, column: 8, scope: !2861)
!2873 = !DILocation(line: 282, column: 11, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 282, column: 4)
!2875 = !DILocation(line: 282, column: 9, scope: !2874)
!2876 = !DILocation(line: 282, column: 16, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 282, column: 4)
!2878 = !DILocation(line: 282, column: 18, scope: !2877)
!2879 = !DILocation(line: 282, column: 4, scope: !2874)
!2880 = !DILocation(line: 283, column: 13, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2877, file: !3, line: 282, column: 29)
!2882 = !DILocation(line: 283, column: 17, scope: !2881)
!2883 = !DILocation(line: 283, column: 25, scope: !2881)
!2884 = !DILocation(line: 283, column: 28, scope: !2881)
!2885 = !DILocation(line: 283, column: 30, scope: !2881)
!2886 = !DILocation(line: 283, column: 23, scope: !2881)
!2887 = !DILocation(line: 283, column: 11, scope: !2881)
!2888 = !DILocation(line: 284, column: 17, scope: !2881)
!2889 = !DILocation(line: 284, column: 21, scope: !2881)
!2890 = !DILocation(line: 284, column: 7, scope: !2881)
!2891 = !DILocation(line: 284, column: 10, scope: !2881)
!2892 = !DILocation(line: 284, column: 12, scope: !2881)
!2893 = !DILocation(line: 284, column: 15, scope: !2881)
!2894 = !DILocation(line: 285, column: 13, scope: !2881)
!2895 = !DILocation(line: 285, column: 17, scope: !2881)
!2896 = !DILocation(line: 285, column: 11, scope: !2881)
!2897 = !DILocation(line: 286, column: 4, scope: !2881)
!2898 = !DILocation(line: 282, column: 25, scope: !2877)
!2899 = !DILocation(line: 282, column: 4, scope: !2877)
!2900 = distinct !{!2900, !2879, !2901, !424}
!2901 = !DILocation(line: 286, column: 4, scope: !2874)
!2902 = !DILocation(line: 287, column: 11, scope: !2861)
!2903 = !DILocation(line: 287, column: 4, scope: !2861)
!2904 = distinct !DISubprogram(name: "uInt64_isZero", scope: !3, file: !3, line: 266, type: !2905, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!6, !2700}
!2907 = !DILocalVariable(name: "n", arg: 1, scope: !2904, file: !3, line: 266, type: !2700)
!2908 = !DILocation(line: 266, column: 30, scope: !2904)
!2909 = !DILocalVariable(name: "i", scope: !2904, file: !3, line: 268, type: !12)
!2910 = !DILocation(line: 268, column: 10, scope: !2904)
!2911 = !DILocation(line: 269, column: 11, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 269, column: 4)
!2913 = !DILocation(line: 269, column: 9, scope: !2912)
!2914 = !DILocation(line: 269, column: 16, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 269, column: 4)
!2916 = !DILocation(line: 269, column: 18, scope: !2915)
!2917 = !DILocation(line: 269, column: 4, scope: !2912)
!2918 = !DILocation(line: 270, column: 11, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 270, column: 11)
!2920 = !DILocation(line: 270, column: 14, scope: !2919)
!2921 = !DILocation(line: 270, column: 16, scope: !2919)
!2922 = !DILocation(line: 270, column: 19, scope: !2919)
!2923 = !DILocation(line: 270, column: 11, scope: !2915)
!2924 = !DILocation(line: 270, column: 25, scope: !2919)
!2925 = !DILocation(line: 270, column: 22, scope: !2919)
!2926 = !DILocation(line: 269, column: 24, scope: !2915)
!2927 = !DILocation(line: 269, column: 4, scope: !2915)
!2928 = distinct !{!2928, !2917, !2929, !424}
!2929 = !DILocation(line: 270, column: 32, scope: !2912)
!2930 = !DILocation(line: 271, column: 4, scope: !2904)
!2931 = !DILocation(line: 272, column: 1, scope: !2904)
!2932 = distinct !DISubprogram(name: "mapSuffix", scope: !3, file: !3, line: 1128, type: !2933, scopeLine: 1131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!6, !8, !33, !33}
!2935 = !DILocalVariable(name: "name", arg: 1, scope: !2932, file: !3, line: 1128, type: !8)
!2936 = !DILocation(line: 1128, column: 24, scope: !2932)
!2937 = !DILocalVariable(name: "oldSuffix", arg: 2, scope: !2932, file: !3, line: 1129, type: !33)
!2938 = !DILocation(line: 1129, column: 30, scope: !2932)
!2939 = !DILocalVariable(name: "newSuffix", arg: 3, scope: !2932, file: !3, line: 1130, type: !33)
!2940 = !DILocation(line: 1130, column: 30, scope: !2932)
!2941 = !DILocation(line: 1132, column: 19, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 1132, column: 8)
!2943 = !DILocation(line: 1132, column: 24, scope: !2942)
!2944 = !DILocation(line: 1132, column: 9, scope: !2942)
!2945 = !DILocation(line: 1132, column: 8, scope: !2932)
!2946 = !DILocation(line: 1132, column: 36, scope: !2942)
!2947 = !DILocation(line: 1133, column: 4, scope: !2932)
!2948 = !DILocation(line: 1133, column: 16, scope: !2932)
!2949 = !DILocation(line: 1133, column: 9, scope: !2932)
!2950 = !DILocation(line: 1133, column: 29, scope: !2932)
!2951 = !DILocation(line: 1133, column: 22, scope: !2932)
!2952 = !DILocation(line: 1133, column: 21, scope: !2932)
!2953 = !DILocation(line: 1133, column: 41, scope: !2932)
!2954 = !DILocation(line: 1134, column: 13, scope: !2932)
!2955 = !DILocation(line: 1134, column: 19, scope: !2932)
!2956 = !DILocation(line: 1134, column: 4, scope: !2932)
!2957 = !DILocation(line: 1135, column: 4, scope: !2932)
!2958 = !DILocation(line: 1136, column: 1, scope: !2932)
!2959 = distinct !DISubprogram(name: "uncompressStream", scope: !3, file: !3, line: 433, type: !2960, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!6, !82, !82}
!2962 = !DILocalVariable(name: "zStream", arg: 1, scope: !2959, file: !3, line: 433, type: !82)
!2963 = !DILocation(line: 433, column: 31, scope: !2959)
!2964 = !DILocalVariable(name: "stream", arg: 2, scope: !2959, file: !3, line: 433, type: !82)
!2965 = !DILocation(line: 433, column: 46, scope: !2959)
!2966 = !DILocalVariable(name: "bzf", scope: !2959, file: !3, line: 435, type: !2406)
!2967 = !DILocation(line: 435, column: 12, scope: !2959)
!2968 = !DILocalVariable(name: "bzerr", scope: !2959, file: !3, line: 436, type: !12)
!2969 = !DILocation(line: 436, column: 12, scope: !2959)
!2970 = !DILocalVariable(name: "bzerr_dummy", scope: !2959, file: !3, line: 436, type: !12)
!2971 = !DILocation(line: 436, column: 19, scope: !2959)
!2972 = !DILocalVariable(name: "ret", scope: !2959, file: !3, line: 436, type: !12)
!2973 = !DILocation(line: 436, column: 32, scope: !2959)
!2974 = !DILocalVariable(name: "nread", scope: !2959, file: !3, line: 436, type: !12)
!2975 = !DILocation(line: 436, column: 37, scope: !2959)
!2976 = !DILocalVariable(name: "streamNo", scope: !2959, file: !3, line: 436, type: !12)
!2977 = !DILocation(line: 436, column: 44, scope: !2959)
!2978 = !DILocalVariable(name: "i", scope: !2959, file: !3, line: 436, type: !12)
!2979 = !DILocation(line: 436, column: 54, scope: !2959)
!2980 = !DILocalVariable(name: "obuf", scope: !2959, file: !3, line: 437, type: !2411)
!2981 = !DILocation(line: 437, column: 12, scope: !2959)
!2982 = !DILocalVariable(name: "unused", scope: !2959, file: !3, line: 438, type: !2411)
!2983 = !DILocation(line: 438, column: 12, scope: !2959)
!2984 = !DILocalVariable(name: "nUnused", scope: !2959, file: !3, line: 439, type: !12)
!2985 = !DILocation(line: 439, column: 12, scope: !2959)
!2986 = !DILocalVariable(name: "unusedTmpV", scope: !2959, file: !3, line: 440, type: !11)
!2987 = !DILocation(line: 440, column: 12, scope: !2959)
!2988 = !DILocalVariable(name: "unusedTmp", scope: !2959, file: !3, line: 441, type: !28)
!2989 = !DILocation(line: 441, column: 12, scope: !2959)
!2990 = !DILocation(line: 443, column: 12, scope: !2959)
!2991 = !DILocation(line: 444, column: 13, scope: !2959)
!2992 = !DILocation(line: 449, column: 8, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 449, column: 8)
!2994 = !DILocation(line: 449, column: 8, scope: !2959)
!2995 = !DILocation(line: 449, column: 24, scope: !2993)
!2996 = !DILocation(line: 450, column: 8, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 450, column: 8)
!2998 = !DILocation(line: 450, column: 8, scope: !2959)
!2999 = !DILocation(line: 450, column: 25, scope: !2997)
!3000 = !DILocation(line: 452, column: 4, scope: !2959)
!3001 = !DILocation(line: 455, column: 24, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 452, column: 17)
!3003 = !DILocation(line: 455, column: 33, scope: !3002)
!3004 = !DILocation(line: 456, column: 21, scope: !3002)
!3005 = !DILocation(line: 456, column: 16, scope: !3002)
!3006 = !DILocation(line: 456, column: 32, scope: !3002)
!3007 = !DILocation(line: 456, column: 40, scope: !3002)
!3008 = !DILocation(line: 454, column: 13, scope: !3002)
!3009 = !DILocation(line: 454, column: 11, scope: !3002)
!3010 = !DILocation(line: 458, column: 11, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 458, column: 11)
!3012 = !DILocation(line: 458, column: 15, scope: !3011)
!3013 = !DILocation(line: 458, column: 23, scope: !3011)
!3014 = !DILocation(line: 458, column: 26, scope: !3011)
!3015 = !DILocation(line: 458, column: 32, scope: !3011)
!3016 = !DILocation(line: 458, column: 11, scope: !3002)
!3017 = !DILocation(line: 458, column: 42, scope: !3011)
!3018 = !DILocation(line: 459, column: 15, scope: !3002)
!3019 = !DILocation(line: 461, column: 7, scope: !3002)
!3020 = !DILocation(line: 461, column: 14, scope: !3002)
!3021 = !DILocation(line: 461, column: 20, scope: !3002)
!3022 = !DILocation(line: 462, column: 39, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 461, column: 30)
!3024 = !DILocation(line: 462, column: 44, scope: !3023)
!3025 = !DILocation(line: 462, column: 18, scope: !3023)
!3026 = !DILocation(line: 462, column: 16, scope: !3023)
!3027 = !DILocation(line: 463, column: 14, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 463, column: 14)
!3029 = !DILocation(line: 463, column: 20, scope: !3028)
!3030 = !DILocation(line: 463, column: 14, scope: !3023)
!3031 = !DILocation(line: 463, column: 44, scope: !3028)
!3032 = !DILocation(line: 464, column: 15, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 464, column: 14)
!3034 = !DILocation(line: 464, column: 21, scope: !3033)
!3035 = !DILocation(line: 464, column: 30, scope: !3033)
!3036 = !DILocation(line: 464, column: 33, scope: !3033)
!3037 = !DILocation(line: 464, column: 39, scope: !3033)
!3038 = !DILocation(line: 464, column: 57, scope: !3033)
!3039 = !DILocation(line: 464, column: 60, scope: !3033)
!3040 = !DILocation(line: 464, column: 66, scope: !3033)
!3041 = !DILocation(line: 464, column: 14, scope: !3023)
!3042 = !DILocation(line: 465, column: 22, scope: !3033)
!3043 = !DILocation(line: 465, column: 43, scope: !3033)
!3044 = !DILocation(line: 465, column: 50, scope: !3033)
!3045 = !DILocation(line: 465, column: 13, scope: !3033)
!3046 = !DILocation(line: 466, column: 14, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 466, column: 14)
!3048 = !DILocation(line: 466, column: 14, scope: !3023)
!3049 = !DILocation(line: 466, column: 30, scope: !3047)
!3050 = distinct !{!3050, !3019, !3051, !424}
!3051 = !DILocation(line: 467, column: 7, scope: !3002)
!3052 = !DILocation(line: 468, column: 11, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 468, column: 11)
!3054 = !DILocation(line: 468, column: 17, scope: !3053)
!3055 = !DILocation(line: 468, column: 11, scope: !3002)
!3056 = !DILocation(line: 468, column: 35, scope: !3053)
!3057 = !DILocation(line: 470, column: 37, scope: !3002)
!3058 = !DILocation(line: 470, column: 7, scope: !3002)
!3059 = !DILocation(line: 471, column: 11, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 471, column: 11)
!3061 = !DILocation(line: 471, column: 17, scope: !3060)
!3062 = !DILocation(line: 471, column: 11, scope: !3002)
!3063 = !DILocation(line: 471, column: 27, scope: !3060)
!3064 = !DILocation(line: 473, column: 27, scope: !3002)
!3065 = !DILocation(line: 473, column: 17, scope: !3002)
!3066 = !DILocation(line: 474, column: 14, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 474, column: 7)
!3068 = !DILocation(line: 474, column: 12, scope: !3067)
!3069 = !DILocation(line: 474, column: 19, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 474, column: 7)
!3071 = !DILocation(line: 474, column: 23, scope: !3070)
!3072 = !DILocation(line: 474, column: 21, scope: !3070)
!3073 = !DILocation(line: 474, column: 7, scope: !3067)
!3074 = !DILocation(line: 474, column: 49, scope: !3070)
!3075 = !DILocation(line: 474, column: 59, scope: !3070)
!3076 = !DILocation(line: 474, column: 44, scope: !3070)
!3077 = !DILocation(line: 474, column: 37, scope: !3070)
!3078 = !DILocation(line: 474, column: 47, scope: !3070)
!3079 = !DILocation(line: 474, column: 33, scope: !3070)
!3080 = !DILocation(line: 474, column: 7, scope: !3070)
!3081 = distinct !{!3081, !3073, !3082, !424}
!3082 = !DILocation(line: 474, column: 60, scope: !3067)
!3083 = !DILocation(line: 476, column: 33, scope: !3002)
!3084 = !DILocation(line: 476, column: 7, scope: !3002)
!3085 = !DILocation(line: 477, column: 11, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 477, column: 11)
!3087 = !DILocation(line: 477, column: 17, scope: !3086)
!3088 = !DILocation(line: 477, column: 11, scope: !3002)
!3089 = !DILocation(line: 477, column: 27, scope: !3086)
!3090 = !DILocation(line: 479, column: 11, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 479, column: 11)
!3092 = !DILocation(line: 479, column: 19, scope: !3091)
!3093 = !DILocation(line: 479, column: 24, scope: !3091)
!3094 = !DILocation(line: 479, column: 34, scope: !3091)
!3095 = !DILocation(line: 479, column: 27, scope: !3091)
!3096 = !DILocation(line: 479, column: 11, scope: !3002)
!3097 = !DILocation(line: 479, column: 44, scope: !3091)
!3098 = distinct !{!3098, !3000, !3099}
!3099 = !DILocation(line: 480, column: 4, scope: !2959)
!3100 = !DILabel(scope: !2959, name: "closeok", file: !3, line: 482)
!3101 = !DILocation(line: 482, column: 4, scope: !2959)
!3102 = !DILocation(line: 483, column: 8, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 483, column: 8)
!3104 = !DILocation(line: 483, column: 8, scope: !2959)
!3105 = !DILocation(line: 483, column: 25, scope: !3103)
!3106 = !DILocation(line: 484, column: 8, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 484, column: 8)
!3108 = !DILocation(line: 484, column: 18, scope: !3107)
!3109 = !DILocation(line: 484, column: 15, scope: !3107)
!3110 = !DILocation(line: 484, column: 8, scope: !2959)
!3111 = !DILocalVariable(name: "fd", scope: !3112, file: !3, line: 485, type: !12)
!3112 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 484, column: 26)
!3113 = !DILocation(line: 485, column: 13, scope: !3112)
!3114 = !DILocation(line: 485, column: 27, scope: !3112)
!3115 = !DILocation(line: 485, column: 18, scope: !3112)
!3116 = !DILocation(line: 486, column: 11, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 486, column: 11)
!3118 = !DILocation(line: 486, column: 14, scope: !3117)
!3119 = !DILocation(line: 486, column: 11, scope: !3112)
!3120 = !DILocation(line: 486, column: 19, scope: !3117)
!3121 = !DILocation(line: 487, column: 40, scope: !3112)
!3122 = !DILocation(line: 487, column: 7, scope: !3112)
!3123 = !DILocation(line: 488, column: 4, scope: !3112)
!3124 = !DILocation(line: 489, column: 19, scope: !2959)
!3125 = !DILocation(line: 489, column: 10, scope: !2959)
!3126 = !DILocation(line: 489, column: 8, scope: !2959)
!3127 = !DILocation(line: 490, column: 8, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 490, column: 8)
!3129 = !DILocation(line: 490, column: 12, scope: !3128)
!3130 = !DILocation(line: 490, column: 8, scope: !2959)
!3131 = !DILocation(line: 490, column: 20, scope: !3128)
!3132 = !DILocation(line: 492, column: 8, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 492, column: 8)
!3134 = !DILocation(line: 492, column: 8, scope: !2959)
!3135 = !DILocation(line: 492, column: 24, scope: !3133)
!3136 = !DILocation(line: 493, column: 19, scope: !2959)
!3137 = !DILocation(line: 493, column: 10, scope: !2959)
!3138 = !DILocation(line: 493, column: 8, scope: !2959)
!3139 = !DILocation(line: 494, column: 8, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 494, column: 8)
!3141 = !DILocation(line: 494, column: 12, scope: !3140)
!3142 = !DILocation(line: 494, column: 8, scope: !2959)
!3143 = !DILocation(line: 494, column: 18, scope: !3140)
!3144 = !DILocation(line: 495, column: 8, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 495, column: 8)
!3146 = !DILocation(line: 495, column: 18, scope: !3145)
!3147 = !DILocation(line: 495, column: 15, scope: !3145)
!3148 = !DILocation(line: 495, column: 8, scope: !2959)
!3149 = !DILocation(line: 496, column: 22, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 495, column: 26)
!3151 = !DILocation(line: 496, column: 13, scope: !3150)
!3152 = !DILocation(line: 496, column: 11, scope: !3150)
!3153 = !DILocation(line: 497, column: 30, scope: !3150)
!3154 = !DILocation(line: 498, column: 11, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 498, column: 11)
!3156 = !DILocation(line: 498, column: 15, scope: !3155)
!3157 = !DILocation(line: 498, column: 11, scope: !3150)
!3158 = !DILocation(line: 498, column: 23, scope: !3155)
!3159 = !DILocation(line: 499, column: 4, scope: !3150)
!3160 = !DILocation(line: 500, column: 27, scope: !2959)
!3161 = !DILocation(line: 501, column: 8, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 501, column: 8)
!3163 = !DILocation(line: 501, column: 18, scope: !3162)
!3164 = !DILocation(line: 501, column: 8, scope: !2959)
!3165 = !DILocation(line: 501, column: 34, scope: !3162)
!3166 = !DILocation(line: 501, column: 24, scope: !3162)
!3167 = !DILocation(line: 502, column: 4, scope: !2959)
!3168 = !DILabel(scope: !2959, name: "trycat", file: !3, line: 504)
!3169 = !DILocation(line: 504, column: 4, scope: !2959)
!3170 = !DILocation(line: 505, column: 8, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 505, column: 8)
!3172 = !DILocation(line: 505, column: 8, scope: !2959)
!3173 = !DILocation(line: 506, column: 14, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3171, file: !3, line: 505, column: 24)
!3175 = !DILocation(line: 506, column: 7, scope: !3174)
!3176 = !DILocation(line: 507, column: 7, scope: !3174)
!3177 = !DILocation(line: 508, column: 20, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 508, column: 13)
!3179 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 507, column: 20)
!3180 = !DILocation(line: 508, column: 13, scope: !3178)
!3181 = !DILocation(line: 508, column: 13, scope: !3179)
!3182 = !DILocation(line: 508, column: 30, scope: !3178)
!3183 = !DILocation(line: 509, column: 25, scope: !3179)
!3184 = !DILocation(line: 509, column: 52, scope: !3179)
!3185 = !DILocation(line: 509, column: 17, scope: !3179)
!3186 = !DILocation(line: 509, column: 15, scope: !3179)
!3187 = !DILocation(line: 510, column: 13, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 510, column: 13)
!3189 = !DILocation(line: 510, column: 13, scope: !3179)
!3190 = !DILocation(line: 510, column: 30, scope: !3188)
!3191 = !DILocation(line: 511, column: 13, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 511, column: 13)
!3193 = !DILocation(line: 511, column: 19, scope: !3192)
!3194 = !DILocation(line: 511, column: 13, scope: !3179)
!3195 = !DILocation(line: 511, column: 33, scope: !3192)
!3196 = !DILocation(line: 511, column: 54, scope: !3192)
!3197 = !DILocation(line: 511, column: 61, scope: !3192)
!3198 = !DILocation(line: 511, column: 24, scope: !3192)
!3199 = !DILocation(line: 512, column: 13, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 512, column: 13)
!3201 = !DILocation(line: 512, column: 13, scope: !3179)
!3202 = !DILocation(line: 512, column: 29, scope: !3200)
!3203 = distinct !{!3203, !3176, !3204}
!3204 = !DILocation(line: 513, column: 7, scope: !3174)
!3205 = !DILocation(line: 514, column: 7, scope: !3174)
!3206 = !DILabel(scope: !2959, name: "errhandler", file: !3, line: 517)
!3207 = !DILocation(line: 517, column: 4, scope: !2959)
!3208 = !DILocation(line: 518, column: 36, scope: !2959)
!3209 = !DILocation(line: 518, column: 4, scope: !2959)
!3210 = !DILocation(line: 519, column: 12, scope: !2959)
!3211 = !DILocation(line: 519, column: 4, scope: !2959)
!3212 = !DILocation(line: 521, column: 10, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 519, column: 19)
!3214 = !DILabel(scope: !3213, name: "errhandler_io", file: !3, line: 523)
!3215 = !DILocation(line: 523, column: 10, scope: !3213)
!3216 = !DILocation(line: 524, column: 10, scope: !3213)
!3217 = !DILocation(line: 526, column: 10, scope: !3213)
!3218 = !DILocation(line: 528, column: 10, scope: !3213)
!3219 = !DILocation(line: 530, column: 10, scope: !3213)
!3220 = !DILocation(line: 532, column: 14, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 532, column: 14)
!3222 = !DILocation(line: 532, column: 25, scope: !3221)
!3223 = !DILocation(line: 532, column: 22, scope: !3221)
!3224 = !DILocation(line: 532, column: 14, scope: !3213)
!3225 = !DILocation(line: 532, column: 39, scope: !3221)
!3226 = !DILocation(line: 532, column: 32, scope: !3221)
!3227 = !DILocation(line: 533, column: 14, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 533, column: 14)
!3229 = !DILocation(line: 533, column: 24, scope: !3228)
!3230 = !DILocation(line: 533, column: 21, scope: !3228)
!3231 = !DILocation(line: 533, column: 14, scope: !3213)
!3232 = !DILocation(line: 533, column: 39, scope: !3228)
!3233 = !DILocation(line: 533, column: 32, scope: !3228)
!3234 = !DILocation(line: 534, column: 14, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 534, column: 14)
!3236 = !DILocation(line: 534, column: 23, scope: !3235)
!3237 = !DILocation(line: 534, column: 14, scope: !3213)
!3238 = !DILocation(line: 535, column: 13, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 534, column: 29)
!3240 = !DILocation(line: 537, column: 17, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 537, column: 17)
!3242 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 536, column: 17)
!3243 = !DILocation(line: 537, column: 17, scope: !3242)
!3244 = !DILocation(line: 538, column: 23, scope: !3241)
!3245 = !DILocation(line: 540, column: 23, scope: !3241)
!3246 = !DILocation(line: 538, column: 13, scope: !3241)
!3247 = !DILocation(line: 541, column: 13, scope: !3242)
!3248 = !DILocation(line: 544, column: 10, scope: !3213)
!3249 = !DILocation(line: 549, column: 1, scope: !2959)
!3250 = distinct !DISubprogram(name: "crcError", scope: !3, file: !3, line: 761, type: !237, scopeLine: 762, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3251 = !DILocation(line: 763, column: 14, scope: !3250)
!3252 = !DILocation(line: 765, column: 14, scope: !3250)
!3253 = !DILocation(line: 763, column: 4, scope: !3250)
!3254 = !DILocation(line: 766, column: 4, scope: !3250)
!3255 = !DILocation(line: 767, column: 4, scope: !3250)
!3256 = !DILocation(line: 768, column: 4, scope: !3250)
!3257 = distinct !DISubprogram(name: "compressedStreamEOF", scope: !3, file: !3, line: 774, type: !237, scopeLine: 775, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3258 = !DILocation(line: 776, column: 7, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3257, file: !3, line: 776, column: 7)
!3260 = !DILocation(line: 776, column: 7, scope: !3257)
!3261 = !DILocation(line: 777, column: 15, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 776, column: 14)
!3263 = !DILocation(line: 780, column: 8, scope: !3262)
!3264 = !DILocation(line: 777, column: 5, scope: !3262)
!3265 = !DILocation(line: 781, column: 14, scope: !3262)
!3266 = !DILocation(line: 781, column: 5, scope: !3262)
!3267 = !DILocation(line: 782, column: 5, scope: !3262)
!3268 = !DILocation(line: 783, column: 5, scope: !3262)
!3269 = !DILocation(line: 784, column: 3, scope: !3262)
!3270 = !DILocation(line: 785, column: 3, scope: !3257)
!3271 = distinct !DISubprogram(name: "cadvise", scope: !3, file: !3, line: 659, type: !237, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3272 = !DILocation(line: 661, column: 8, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 661, column: 8)
!3274 = !DILocation(line: 661, column: 8, scope: !3271)
!3275 = !DILocation(line: 663, column: 7, scope: !3273)
!3276 = !DILocation(line: 662, column: 4, scope: !3273)
!3277 = !DILocation(line: 669, column: 1, scope: !3271)
!3278 = distinct !DISubprogram(name: "testStream", scope: !3, file: !3, line: 554, type: !2661, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3279 = !DILocalVariable(name: "zStream", arg: 1, scope: !3278, file: !3, line: 554, type: !82)
!3280 = !DILocation(line: 554, column: 25, scope: !3278)
!3281 = !DILocalVariable(name: "bzf", scope: !3278, file: !3, line: 556, type: !2406)
!3282 = !DILocation(line: 556, column: 12, scope: !3278)
!3283 = !DILocalVariable(name: "bzerr", scope: !3278, file: !3, line: 557, type: !12)
!3284 = !DILocation(line: 557, column: 12, scope: !3278)
!3285 = !DILocalVariable(name: "bzerr_dummy", scope: !3278, file: !3, line: 557, type: !12)
!3286 = !DILocation(line: 557, column: 19, scope: !3278)
!3287 = !DILocalVariable(name: "ret", scope: !3278, file: !3, line: 557, type: !12)
!3288 = !DILocation(line: 557, column: 32, scope: !3278)
!3289 = !DILocalVariable(name: "streamNo", scope: !3278, file: !3, line: 557, type: !12)
!3290 = !DILocation(line: 557, column: 37, scope: !3278)
!3291 = !DILocalVariable(name: "i", scope: !3278, file: !3, line: 557, type: !12)
!3292 = !DILocation(line: 557, column: 47, scope: !3278)
!3293 = !DILocalVariable(name: "obuf", scope: !3278, file: !3, line: 558, type: !2411)
!3294 = !DILocation(line: 558, column: 12, scope: !3278)
!3295 = !DILocalVariable(name: "unused", scope: !3278, file: !3, line: 559, type: !2411)
!3296 = !DILocation(line: 559, column: 12, scope: !3278)
!3297 = !DILocalVariable(name: "nUnused", scope: !3278, file: !3, line: 560, type: !12)
!3298 = !DILocation(line: 560, column: 12, scope: !3278)
!3299 = !DILocalVariable(name: "unusedTmpV", scope: !3278, file: !3, line: 561, type: !11)
!3300 = !DILocation(line: 561, column: 12, scope: !3278)
!3301 = !DILocalVariable(name: "unusedTmp", scope: !3278, file: !3, line: 562, type: !28)
!3302 = !DILocation(line: 562, column: 12, scope: !3278)
!3303 = !DILocation(line: 564, column: 12, scope: !3278)
!3304 = !DILocation(line: 565, column: 13, scope: !3278)
!3305 = !DILocation(line: 568, column: 8, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 568, column: 8)
!3307 = !DILocation(line: 568, column: 8, scope: !3278)
!3308 = !DILocation(line: 568, column: 25, scope: !3306)
!3309 = !DILocation(line: 570, column: 4, scope: !3278)
!3310 = !DILocation(line: 573, column: 24, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 570, column: 17)
!3312 = !DILocation(line: 573, column: 33, scope: !3311)
!3313 = !DILocation(line: 574, column: 21, scope: !3311)
!3314 = !DILocation(line: 574, column: 16, scope: !3311)
!3315 = !DILocation(line: 574, column: 32, scope: !3311)
!3316 = !DILocation(line: 574, column: 40, scope: !3311)
!3317 = !DILocation(line: 572, column: 13, scope: !3311)
!3318 = !DILocation(line: 572, column: 11, scope: !3311)
!3319 = !DILocation(line: 576, column: 11, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 576, column: 11)
!3321 = !DILocation(line: 576, column: 15, scope: !3320)
!3322 = !DILocation(line: 576, column: 23, scope: !3320)
!3323 = !DILocation(line: 576, column: 26, scope: !3320)
!3324 = !DILocation(line: 576, column: 32, scope: !3320)
!3325 = !DILocation(line: 576, column: 11, scope: !3311)
!3326 = !DILocation(line: 576, column: 42, scope: !3320)
!3327 = !DILocation(line: 577, column: 15, scope: !3311)
!3328 = !DILocation(line: 579, column: 7, scope: !3311)
!3329 = !DILocation(line: 579, column: 14, scope: !3311)
!3330 = !DILocation(line: 579, column: 20, scope: !3311)
!3331 = !DILocation(line: 580, column: 31, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 579, column: 30)
!3333 = !DILocation(line: 580, column: 36, scope: !3332)
!3334 = !DILocation(line: 580, column: 10, scope: !3332)
!3335 = !DILocation(line: 581, column: 14, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 581, column: 14)
!3337 = !DILocation(line: 581, column: 20, scope: !3336)
!3338 = !DILocation(line: 581, column: 14, scope: !3332)
!3339 = !DILocation(line: 581, column: 44, scope: !3336)
!3340 = distinct !{!3340, !3328, !3341, !424}
!3341 = !DILocation(line: 582, column: 7, scope: !3311)
!3342 = !DILocation(line: 583, column: 11, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 583, column: 11)
!3344 = !DILocation(line: 583, column: 17, scope: !3343)
!3345 = !DILocation(line: 583, column: 11, scope: !3311)
!3346 = !DILocation(line: 583, column: 35, scope: !3343)
!3347 = !DILocation(line: 585, column: 37, scope: !3311)
!3348 = !DILocation(line: 585, column: 7, scope: !3311)
!3349 = !DILocation(line: 586, column: 11, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 586, column: 11)
!3351 = !DILocation(line: 586, column: 17, scope: !3350)
!3352 = !DILocation(line: 586, column: 11, scope: !3311)
!3353 = !DILocation(line: 586, column: 27, scope: !3350)
!3354 = !DILocation(line: 588, column: 27, scope: !3311)
!3355 = !DILocation(line: 588, column: 17, scope: !3311)
!3356 = !DILocation(line: 589, column: 14, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 589, column: 7)
!3358 = !DILocation(line: 589, column: 12, scope: !3357)
!3359 = !DILocation(line: 589, column: 19, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 589, column: 7)
!3361 = !DILocation(line: 589, column: 23, scope: !3360)
!3362 = !DILocation(line: 589, column: 21, scope: !3360)
!3363 = !DILocation(line: 589, column: 7, scope: !3357)
!3364 = !DILocation(line: 589, column: 49, scope: !3360)
!3365 = !DILocation(line: 589, column: 59, scope: !3360)
!3366 = !DILocation(line: 589, column: 44, scope: !3360)
!3367 = !DILocation(line: 589, column: 37, scope: !3360)
!3368 = !DILocation(line: 589, column: 47, scope: !3360)
!3369 = !DILocation(line: 589, column: 33, scope: !3360)
!3370 = !DILocation(line: 589, column: 7, scope: !3360)
!3371 = distinct !{!3371, !3363, !3372, !424}
!3372 = !DILocation(line: 589, column: 60, scope: !3357)
!3373 = !DILocation(line: 591, column: 33, scope: !3311)
!3374 = !DILocation(line: 591, column: 7, scope: !3311)
!3375 = !DILocation(line: 592, column: 11, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 592, column: 11)
!3377 = !DILocation(line: 592, column: 17, scope: !3376)
!3378 = !DILocation(line: 592, column: 11, scope: !3311)
!3379 = !DILocation(line: 592, column: 27, scope: !3376)
!3380 = !DILocation(line: 593, column: 11, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 593, column: 11)
!3382 = !DILocation(line: 593, column: 19, scope: !3381)
!3383 = !DILocation(line: 593, column: 24, scope: !3381)
!3384 = !DILocation(line: 593, column: 34, scope: !3381)
!3385 = !DILocation(line: 593, column: 27, scope: !3381)
!3386 = !DILocation(line: 593, column: 11, scope: !3311)
!3387 = !DILocation(line: 593, column: 44, scope: !3381)
!3388 = distinct !{!3388, !3309, !3389}
!3389 = !DILocation(line: 595, column: 4, scope: !3278)
!3390 = !DILocation(line: 597, column: 8, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 597, column: 8)
!3392 = !DILocation(line: 597, column: 8, scope: !3278)
!3393 = !DILocation(line: 597, column: 25, scope: !3391)
!3394 = !DILocation(line: 598, column: 19, scope: !3278)
!3395 = !DILocation(line: 598, column: 10, scope: !3278)
!3396 = !DILocation(line: 598, column: 8, scope: !3278)
!3397 = !DILocation(line: 599, column: 8, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 599, column: 8)
!3399 = !DILocation(line: 599, column: 12, scope: !3398)
!3400 = !DILocation(line: 599, column: 8, scope: !3278)
!3401 = !DILocation(line: 599, column: 20, scope: !3398)
!3402 = !DILocation(line: 601, column: 8, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 601, column: 8)
!3404 = !DILocation(line: 601, column: 18, scope: !3403)
!3405 = !DILocation(line: 601, column: 8, scope: !3278)
!3406 = !DILocation(line: 601, column: 34, scope: !3403)
!3407 = !DILocation(line: 601, column: 24, scope: !3403)
!3408 = !DILocation(line: 602, column: 4, scope: !3278)
!3409 = !DILabel(scope: !3278, name: "errhandler", file: !3, line: 604)
!3410 = !DILocation(line: 604, column: 4, scope: !3278)
!3411 = !DILocation(line: 605, column: 36, scope: !3278)
!3412 = !DILocation(line: 605, column: 4, scope: !3278)
!3413 = !DILocation(line: 606, column: 8, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 606, column: 8)
!3415 = !DILocation(line: 606, column: 18, scope: !3414)
!3416 = !DILocation(line: 606, column: 8, scope: !3278)
!3417 = !DILocation(line: 607, column: 17, scope: !3414)
!3418 = !DILocation(line: 607, column: 37, scope: !3414)
!3419 = !DILocation(line: 607, column: 7, scope: !3414)
!3420 = !DILocation(line: 608, column: 12, scope: !3278)
!3421 = !DILocation(line: 608, column: 4, scope: !3278)
!3422 = !DILocation(line: 610, column: 10, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 608, column: 19)
!3424 = !DILabel(scope: !3423, name: "errhandler_io", file: !3, line: 612)
!3425 = !DILocation(line: 612, column: 10, scope: !3423)
!3426 = !DILocation(line: 613, column: 10, scope: !3423)
!3427 = !DILocation(line: 615, column: 20, scope: !3423)
!3428 = !DILocation(line: 615, column: 10, scope: !3423)
!3429 = !DILocation(line: 617, column: 10, scope: !3423)
!3430 = !DILocation(line: 619, column: 10, scope: !3423)
!3431 = !DILocation(line: 621, column: 20, scope: !3423)
!3432 = !DILocation(line: 621, column: 10, scope: !3423)
!3433 = !DILocation(line: 623, column: 10, scope: !3423)
!3434 = !DILocation(line: 625, column: 14, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 625, column: 14)
!3436 = !DILocation(line: 625, column: 25, scope: !3435)
!3437 = !DILocation(line: 625, column: 22, scope: !3435)
!3438 = !DILocation(line: 625, column: 14, scope: !3423)
!3439 = !DILocation(line: 625, column: 39, scope: !3435)
!3440 = !DILocation(line: 625, column: 32, scope: !3435)
!3441 = !DILocation(line: 626, column: 14, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 626, column: 14)
!3443 = !DILocation(line: 626, column: 23, scope: !3442)
!3444 = !DILocation(line: 626, column: 14, scope: !3423)
!3445 = !DILocation(line: 627, column: 21, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 626, column: 29)
!3447 = !DILocation(line: 627, column: 11, scope: !3446)
!3448 = !DILocation(line: 629, column: 13, scope: !3446)
!3449 = !DILocation(line: 631, column: 17, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 631, column: 17)
!3451 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 630, column: 17)
!3452 = !DILocation(line: 631, column: 17, scope: !3451)
!3453 = !DILocation(line: 632, column: 23, scope: !3450)
!3454 = !DILocation(line: 632, column: 13, scope: !3450)
!3455 = !DILocation(line: 634, column: 13, scope: !3451)
!3456 = !DILocation(line: 637, column: 10, scope: !3423)
!3457 = !DILocation(line: 642, column: 1, scope: !3278)
