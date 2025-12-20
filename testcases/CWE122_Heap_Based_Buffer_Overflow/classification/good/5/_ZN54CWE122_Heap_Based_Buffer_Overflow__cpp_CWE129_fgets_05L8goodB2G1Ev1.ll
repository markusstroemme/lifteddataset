@global_var_aa5f0 = external constant [16 x i8]
@global_var_aa620 = external constant [21 x i8]
@global_var_aa638 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr
@global_var_dc030 = external local_unnamed_addr global i32
@global_var_dc0e0 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_26d17:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %rsi.0.reg2mem = alloca i64, align 8
  %stack_var_-48.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_dc030, align 4
  %2 = icmp eq i32 %1, 0
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_26d9a, label %dec_label_pc_26d43

dec_label_pc_26d43:                               ; preds = %dec_label_pc_26d17
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_dc090, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  %7 = icmp eq i1 %6, false
  %8 = icmp eq i1 %7, false
  br i1 %8, label %dec_label_pc_26d8b, label %dec_label_pc_26d7a

dec_label_pc_26d7a:                               ; preds = %dec_label_pc_26d43
  %9 = call i32 @atoi(ptr nonnull %4)
  store i32 %9, ptr %stack_var_-48.0.reg2mem, align 4
  store i64 14, ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_26d9a

dec_label_pc_26d8b:                               ; preds = %dec_label_pc_26d43
  call void @printLine(ptr @global_var_aa5f0)
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  store i64 14, ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_26d9a

dec_label_pc_26d9a:                               ; preds = %dec_label_pc_26d8b, %dec_label_pc_26d7a, %dec_label_pc_26d17
  %10 = load i32, ptr @global_var_dc0e0, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %dec_label_pc_26db8, label %dec_label_pc_26da4

dec_label_pc_26da4:                               ; preds = %dec_label_pc_26d9a
  call void @printLine(ptr @global_var_aa620)
  br label %dec_label_pc_26e6d

dec_label_pc_26db8:                               ; preds = %dec_label_pc_26d9a
  %rsi.0.reload = load i64, ptr %rsi.0.reg2mem, align 8
  %stack_var_-48.0.reload = load i32, ptr %stack_var_-48.0.reg2mem, align 4
  %12 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_26dcf

dec_label_pc_26dcf:                               ; preds = %dec_label_pc_26dcf, %dec_label_pc_26db8
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %13 = mul i64 %indvars.iv5.reload, 4
  %14 = add i64 %13, %12
  %15 = inttoptr i64 %14 to ptr
  store i32 0, ptr %15, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_26df3, label %dec_label_pc_26dcf

dec_label_pc_26df3:                               ; preds = %dec_label_pc_26dcf
  %16 = icmp ugt i32 %stack_var_-48.0.reload, 9
  br i1 %16, label %dec_label_pc_26e4b, label %dec_label_pc_26dff

dec_label_pc_26dff:                               ; preds = %dec_label_pc_26df3
  %17 = sext i32 %stack_var_-48.0.reload to i64
  %18 = mul i64 %17, 4
  %19 = add i64 %12, %18
  %20 = inttoptr i64 %19 to ptr
  store i32 1, ptr %20, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_26e22

dec_label_pc_26e22:                               ; preds = %dec_label_pc_26e22, %dec_label_pc_26dff
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %21 = mul i64 %indvars.iv.reload, 4
  %22 = add i64 %21, %12
  %23 = inttoptr i64 %22 to ptr
  %24 = load i32, ptr %23, align 4
  call void @printIntLine(i32 %24)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_26e5a, label %dec_label_pc_26e22

dec_label_pc_26e4b:                               ; preds = %dec_label_pc_26df3
  call void @printLine(ptr @global_var_aa638)
  br label %dec_label_pc_26e5a

dec_label_pc_26e5a:                               ; preds = %dec_label_pc_26e22, %dec_label_pc_26e4b
  %25 = icmp eq i64 %12, 0
  br i1 %25, label %dec_label_pc_26e6d, label %dec_label_pc_26e61

dec_label_pc_26e61:                               ; preds = %dec_label_pc_26e5a
  %26 = inttoptr i64 %12 to ptr
  %27 = and i64 %rsi.0.reload, 4294967295
  %28 = inttoptr i64 %27 to ptr
  call void @_ZdaPv(ptr %26, ptr %28)
  br label %dec_label_pc_26e6d

dec_label_pc_26e6d:                               ; preds = %dec_label_pc_26e61, %dec_label_pc_26e5a, %dec_label_pc_26da4
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %0, %29
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %30, label %dec_label_pc_26e82, label %dec_label_pc_26e7d

dec_label_pc_26e7d:                               ; preds = %dec_label_pc_26e6d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26e82

dec_label_pc_26e82:                               ; preds = %dec_label_pc_26e7d, %dec_label_pc_26e6d
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

