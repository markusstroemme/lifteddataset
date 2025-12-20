@global_var_6dc0a = external constant [21 x i8]
@global_var_6eb7c = external constant [4 x i8]
@0 = external global i32
@global_var_89064 = external local_unnamed_addr global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_36215:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_517f6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-40.02.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_89064, align 4
  %2 = icmp eq i32 %1, 5
  br i1 %2, label %dec_label_pc_51835.thread, label %dec_label_pc_51835

dec_label_pc_51835.thread:                        ; preds = %dec_label_pc_517f6
  %3 = ptrtoint ptr %stack_var_-24 to i64
  store i64 %3, ptr %stack_var_-40.02.reg2mem, align 8
  br label %dec_label_pc_51840

dec_label_pc_51835:                               ; preds = %dec_label_pc_517f6
  call void @printLine(ptr @global_var_6dc0a)
  %.pre = load i32, ptr @global_var_89064, align 4
  %phitmp = icmp eq i32 %.pre, 5
  %phitmp1 = icmp eq i1 %phitmp, false
  br i1 %phitmp1, label %dec_label_pc_51877, label %dec_label_pc_51840

dec_label_pc_51840:                               ; preds = %dec_label_pc_51835.thread, %dec_label_pc_51835
  %stack_var_-40.02.reload = load i64, ptr %stack_var_-40.02.reg2mem, align 8
  %4 = inttoptr i64 %stack_var_-40.02.reload to ptr
  %5 = call ptr @_ZnwmPv(i64 8, ptr %4)
  %6 = ptrtoint ptr %5 to i64
  %7 = bitcast ptr %5 to ptr
  store i32 5, ptr %7, align 4
  %8 = add i64 %6, 4
  %9 = inttoptr i64 %8 to ptr
  store i32 10, ptr %9, align 4
  %10 = load i32, ptr %7, align 4
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_51877

dec_label_pc_51877:                               ; preds = %dec_label_pc_51840, %dec_label_pc_51835
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_5188c, label %dec_label_pc_51887

dec_label_pc_51887:                               ; preds = %dec_label_pc_51877
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5188c

dec_label_pc_5188c:                               ; preds = %dec_label_pc_51887, %dec_label_pc_51877
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5bf88:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_6eb7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

