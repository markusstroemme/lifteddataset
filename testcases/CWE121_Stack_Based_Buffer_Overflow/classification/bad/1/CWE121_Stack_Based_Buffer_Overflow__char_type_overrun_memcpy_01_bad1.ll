; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__char_type_overrun_memcpy_01_bad1.bc'
source_filename = "test"
target datalayout = "e-m:e-p:64:64-i64:64-f80:128-n8:16:32:64-S128"

@global_var_bb5d8 = external constant [32 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_6ee9a:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40), !insn.addr !0
  call void @printLine(ptr @global_var_bb5d8), !insn.addr !1
  %1 = call ptr @memcpy(ptr nonnull %stack_var_-56, ptr @global_var_bb5d8, i32 32), !insn.addr !2
  %2 = bitcast ptr %stack_var_-56 to ptr, !insn.addr !3
  call void @printLine(ptr nonnull %2), !insn.addr !3
  call void @printLine(ptr @global_var_bb5d8), !insn.addr !4
  %3 = call i64 @__readfsqword(i64 40), !insn.addr !5
  %4 = icmp eq i64 %0, %3, !insn.addr !5
  br i1 %4, label %dec_label_pc_6ef18, label %dec_label_pc_6ef13, !insn.addr !6

dec_label_pc_6ef13:                               ; preds = %dec_label_pc_6ee9a
  call void @__stack_chk_fail(), !insn.addr !7
  br label %dec_label_pc_6ef18, !insn.addr !7

dec_label_pc_6ef18:                               ; preds = %dec_label_pc_6ef13, %dec_label_pc_6ee9a
  ret void, !insn.addr !8
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null, !insn.addr !9
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2, !insn.addr !10

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line), !insn.addr !11
  br label %dec_label_pc_a06de, !insn.addr !11

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void, !insn.addr !12
}

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

!0 = !{i64 454310}
!1 = !{i64 454343}
!2 = !{i64 454370}
!3 = !{i64 454386}
!4 = !{i64 454398}
!5 = !{i64 454408}
!6 = !{i64 454417}
!7 = !{i64 454419}
!8 = !{i64 454425}
!9 = !{i64 657099}
!10 = !{i64 657104}
!11 = !{i64 657113}
!12 = !{i64 657120}
