; ModuleID = '_ZN58CWE121_Stack_Based_Buffer_Overflow__src_char_alloca_cat_843badEv1.bc'
source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@0 = external global i32
@global_var_1000 = external global i32
@global_var_fff = external global i32

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_57682:
  %0 = ptrtoint ptr %result to i64
  %1 = ptrtoint ptr %arg2 to i64, !insn.addr !0
  store i64 %1, ptr %result, align 8, !insn.addr !1
  %2 = call ptr @memset(ptr %result, i32 65, i32 99), !insn.addr !2
  %3 = add i64 %0, 99, !insn.addr !3
  %4 = inttoptr i64 %3 to ptr, !insn.addr !4
  store i8 0, ptr %4, align 1, !insn.addr !4
  ret void, !insn.addr !5
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_576cc:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40), !insn.addr !6
  store i64 0, ptr %stack_var_-72, align 8, !insn.addr !7
  %1 = bitcast ptr %stack_var_-72 to ptr, !insn.addr !8
  %2 = bitcast ptr %result to ptr, !insn.addr !8
  %3 = call ptr @strcat(ptr nonnull %1, ptr %2), !insn.addr !8
  call void @printLine(ptr nonnull %1), !insn.addr !9
  %4 = call i64 @__readfsqword(i64 40), !insn.addr !10
  %5 = icmp eq i64 %0, %4, !insn.addr !10
  br i1 %5, label %dec_label_pc_5775b, label %dec_label_pc_57756, !insn.addr !11

dec_label_pc_57756:                               ; preds = %dec_label_pc_576cc
  call void @__stack_chk_fail(), !insn.addr !12
  br label %dec_label_pc_5775b, !insn.addr !12

dec_label_pc_5775b:                               ; preds = %dec_label_pc_57756, %dec_label_pc_576cc
  ret void, !insn.addr !13
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_57839:
  %rax.0.reg2mem = alloca i64, align 8, !insn.addr !14
  %rsp.0.reg2mem = alloca i64, align 8, !insn.addr !14
  %stack_var_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64, !insn.addr !15
  %1 = call i64 @__readfsqword(i64 40), !insn.addr !16
  store i64 %0, ptr %rsp.0.reg2mem, align 8, !insn.addr !17
  br label %dec_label_pc_57885, !insn.addr !17

dec_label_pc_57885:                               ; preds = %dec_label_pc_57885, %dec_label_pc_57839
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0, !insn.addr !18
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64), !insn.addr !19
  store i64 %3, ptr %rsp.0.reg2mem, align 8, !insn.addr !20
  br i1 %2, label %dec_label_pc_5789c, label %dec_label_pc_57885, !insn.addr !20

dec_label_pc_5789c:                               ; preds = %dec_label_pc_57885
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3, !insn.addr !21
  %5 = and i64 %4, -16, !insn.addr !22
  %6 = inttoptr i64 %5 to ptr, !insn.addr !23
  store ptr %6, ptr %stack_var_-56, align 8, !insn.addr !23
  %7 = call i64 @_Znwm(i64 8), !insn.addr !24
  %8 = inttoptr i64 %7 to ptr, !insn.addr !25
  call void @anon0(ptr %8, ptr %6), !insn.addr !25
  %9 = icmp eq i64 %7, 0, !insn.addr !26
  br i1 %9, label %dec_label_pc_57940, label %dec_label_pc_5790a, !insn.addr !27

dec_label_pc_5790a:                               ; preds = %dec_label_pc_5789c
  call void @anon1(ptr %8), !insn.addr !28
  %10 = call i64 @_ZdlPvm(ptr %8, i64 8), !insn.addr !29
  br label %dec_label_pc_57940, !insn.addr !30

dec_label_pc_57940:                               ; preds = %dec_label_pc_5790a, %dec_label_pc_5789c
  %11 = call i64 @__readfsqword(i64 40), !insn.addr !31
  %12 = icmp eq i64 %1, %11, !insn.addr !31
  store i64 0, ptr %rax.0.reg2mem, align 8, !insn.addr !32
  br i1 %12, label %dec_label_pc_57955, label %dec_label_pc_57950, !insn.addr !32

dec_label_pc_57950:                               ; preds = %dec_label_pc_57940
  call void @__stack_chk_fail(), !insn.addr !33
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8, !insn.addr !33
  br label %dec_label_pc_57955, !insn.addr !33

dec_label_pc_57955:                               ; preds = %dec_label_pc_57950, %dec_label_pc_57940
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload, !insn.addr !34
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null, !insn.addr !35
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44, !insn.addr !36

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line), !insn.addr !37
  br label %dec_label_pc_5bf50, !insn.addr !37

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void, !insn.addr !38
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

!0 = !{i64 358042}
!1 = !{i64 358046}
!2 = !{i64 358069}
!3 = !{i64 358081}
!4 = !{i64 358085}
!5 = !{i64 358090}
!6 = !{i64 358108}
!7 = !{i64 358123}
!8 = !{i64 358194}
!9 = !{i64 358209}
!10 = !{i64 358219}
!11 = !{i64 358228}
!12 = !{i64 358230}
!13 = !{i64 358236}
!14 = !{i64 358457}
!15 = !{i64 358468}
!16 = !{i64 358472}
!17 = !{i64 358530}
!18 = !{i64 358533}
!19 = !{i64 358538}
!20 = !{i64 358536}
!21 = !{i64 358601}
!22 = !{i64 358605}
!23 = !{i64 358613}
!24 = !{i64 358630}
!25 = !{i64 358648}
!26 = !{i64 358661}
!27 = !{i64 358664}
!28 = !{i64 358669}
!29 = !{i64 358682}
!30 = !{i64 358687}
!31 = !{i64 358725}
!32 = !{i64 358734}
!33 = !{i64 358736}
!34 = !{i64 358749}
!35 = !{i64 376637}
!36 = !{i64 376642}
!37 = !{i64 376651}
!38 = !{i64 376658}
