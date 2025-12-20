@global_var_79a67 = external constant [3 x i8]
@global_var_a2080 = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_adb6:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_a2080, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_adf6, label %dec_label_pc_add0

dec_label_pc_add0:                                ; preds = %dec_label_pc_adb6
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_adef, label %dec_label_pc_ade5

dec_label_pc_ade5:                                ; preds = %dec_label_pc_add0
  call void @exit(i32 -1)
  unreachable

dec_label_pc_adef:                                ; preds = %dec_label_pc_add0
  %5 = bitcast ptr %2 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_adf6

dec_label_pc_adf6:                                ; preds = %dec_label_pc_adef, %dec_label_pc_adb6
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @anon1() local_unnamed_addr {
dec_label_pc_adfc:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @global_var_a2080, align 4
  %1 = call ptr @anon0(ptr null)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %1, i32 100, ptr @global_var_79a67, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %1)
  %4 = bitcast ptr %1 to ptr
  call void @free(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_aea4, label %dec_label_pc_ae9f

dec_label_pc_ae9f:                                ; preds = %dec_label_pc_adfc
  call void @__stack_chk_fail()
  br label %dec_label_pc_aea4

dec_label_pc_aea4:                                ; preds = %dec_label_pc_ae9f, %dec_label_pc_adfc
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_657a6:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_657c9, label %dec_label_pc_657bd

dec_label_pc_657bd:                               ; preds = %dec_label_pc_657a6
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_657c9

dec_label_pc_657c9:                               ; preds = %dec_label_pc_657bd, %dec_label_pc_657a6
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

