@global_var_aa810 = external constant [16 x i8]
@global_var_aa840 = external constant [21 x i8]
@global_var_aa858 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc080 = external local_unnamed_addr global i32
@global_var_dc348 = external local_unnamed_addr global i32
@global_var_dc090 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_28b4b:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %rsi.0.reg2mem = alloca i64, align 8
  %stack_var_-48.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_dc080, align 4
  %2 = icmp eq i32 %1, 0
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_28bce, label %dec_label_pc_28b77

dec_label_pc_28b77:                               ; preds = %dec_label_pc_28b4b
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_dc090, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  %7 = icmp eq i1 %6, false
  %8 = icmp eq i1 %7, false
  br i1 %8, label %dec_label_pc_28bbf, label %dec_label_pc_28bae

dec_label_pc_28bae:                               ; preds = %dec_label_pc_28b77
  %9 = call i32 @atoi(ptr nonnull %4)
  store i32 %9, ptr %stack_var_-48.0.reg2mem, align 4
  store i64 14, ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_28bce

dec_label_pc_28bbf:                               ; preds = %dec_label_pc_28b77
  call void @printLine(ptr @global_var_aa810)
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  store i64 14, ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_28bce

dec_label_pc_28bce:                               ; preds = %dec_label_pc_28bbf, %dec_label_pc_28bae, %dec_label_pc_28b4b
  %10 = load i32, ptr @global_var_dc348, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %dec_label_pc_28bec, label %dec_label_pc_28bd8

dec_label_pc_28bd8:                               ; preds = %dec_label_pc_28bce
  call void @printLine(ptr @global_var_aa840)
  br label %dec_label_pc_28ca1

dec_label_pc_28bec:                               ; preds = %dec_label_pc_28bce
  %rsi.0.reload = load i64, ptr %rsi.0.reg2mem, align 8
  %stack_var_-48.0.reload = load i32, ptr %stack_var_-48.0.reg2mem, align 4
  %12 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_28c03

dec_label_pc_28c03:                               ; preds = %dec_label_pc_28c03, %dec_label_pc_28bec
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %13 = mul i64 %indvars.iv5.reload, 4
  %14 = add i64 %13, %12
  %15 = inttoptr i64 %14 to ptr
  store i32 0, ptr %15, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_28c27, label %dec_label_pc_28c03

dec_label_pc_28c27:                               ; preds = %dec_label_pc_28c03
  %16 = icmp ugt i32 %stack_var_-48.0.reload, 9
  br i1 %16, label %dec_label_pc_28c7f, label %dec_label_pc_28c33

dec_label_pc_28c33:                               ; preds = %dec_label_pc_28c27
  %17 = sext i32 %stack_var_-48.0.reload to i64
  %18 = mul i64 %17, 4
  %19 = add i64 %12, %18
  %20 = inttoptr i64 %19 to ptr
  store i32 1, ptr %20, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_28c56

dec_label_pc_28c56:                               ; preds = %dec_label_pc_28c56, %dec_label_pc_28c33
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %21 = mul i64 %indvars.iv.reload, 4
  %22 = add i64 %21, %12
  %23 = inttoptr i64 %22 to ptr
  %24 = load i32, ptr %23, align 4
  call void @printIntLine(i32 %24)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_28c8e, label %dec_label_pc_28c56

dec_label_pc_28c7f:                               ; preds = %dec_label_pc_28c27
  call void @printLine(ptr @global_var_aa858)
  br label %dec_label_pc_28c8e

dec_label_pc_28c8e:                               ; preds = %dec_label_pc_28c56, %dec_label_pc_28c7f
  %25 = icmp eq i64 %12, 0
  br i1 %25, label %dec_label_pc_28ca1, label %dec_label_pc_28c95

dec_label_pc_28c95:                               ; preds = %dec_label_pc_28c8e
  %26 = inttoptr i64 %12 to ptr
  %27 = and i64 %rsi.0.reload, 4294967295
  %28 = inttoptr i64 %27 to ptr
  call void @_ZdaPv(ptr %26, ptr %28)
  br label %dec_label_pc_28ca1

dec_label_pc_28ca1:                               ; preds = %dec_label_pc_28c95, %dec_label_pc_28c8e, %dec_label_pc_28bd8
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %0, %29
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %30, label %dec_label_pc_28cb6, label %dec_label_pc_28cb1

dec_label_pc_28cb1:                               ; preds = %dec_label_pc_28ca1
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_28cb6

dec_label_pc_28cb6:                               ; preds = %dec_label_pc_28cb1, %dec_label_pc_28ca1
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

