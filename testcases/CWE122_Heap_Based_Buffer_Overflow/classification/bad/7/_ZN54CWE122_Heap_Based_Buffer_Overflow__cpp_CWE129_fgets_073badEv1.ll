@global_var_aa6c0 = external constant [16 x i8]
@global_var_aa6d0 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr
@global_var_dc034 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_27759:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %rsi.0.reg2mem = alloca i64, align 8
  %stack_var_-48.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_dc034, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br i1 %3, label %dec_label_pc_277dd, label %dec_label_pc_27786

dec_label_pc_27786:                               ; preds = %dec_label_pc_27759
  store i64 0, ptr %stack_var_-30, align 8
  %4 = load ptr, ptr @global_var_dc090, align 8
  %5 = bitcast ptr %stack_var_-30 to ptr
  %6 = call ptr @fgets(ptr nonnull %5, i32 14, ptr %4)
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_277ce, label %dec_label_pc_277bd

dec_label_pc_277bd:                               ; preds = %dec_label_pc_27786
  %10 = call i32 @atoi(ptr nonnull %5)
  store i32 %10, ptr %stack_var_-48.0.reg2mem, align 4
  store i64 14, ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_277dd

dec_label_pc_277ce:                               ; preds = %dec_label_pc_27786
  call void @printLine(ptr @global_var_aa6c0)
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  store i64 14, ptr %rsi.0.reg2mem, align 8
  br label %dec_label_pc_277dd

dec_label_pc_277dd:                               ; preds = %dec_label_pc_277ce, %dec_label_pc_277bd, %dec_label_pc_27759
  %11 = load i32, ptr @global_var_dc034, align 4
  %12 = icmp eq i32 %11, 5
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_2789b, label %dec_label_pc_277ec

dec_label_pc_277ec:                               ; preds = %dec_label_pc_277dd
  %rsi.0.reload = load i64, ptr %rsi.0.reg2mem, align 8
  %stack_var_-48.0.reload = load i32, ptr %stack_var_-48.0.reg2mem, align 4
  %14 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br label %dec_label_pc_27803

dec_label_pc_27803:                               ; preds = %dec_label_pc_27803, %dec_label_pc_277ec
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %15 = mul i64 %indvars.iv4.reload, 4
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i32 0, ptr %17, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_27827, label %dec_label_pc_27803

dec_label_pc_27827:                               ; preds = %dec_label_pc_27803
  %18 = icmp slt i32 %stack_var_-48.0.reload, 0
  br i1 %18, label %dec_label_pc_27879, label %dec_label_pc_2782d

dec_label_pc_2782d:                               ; preds = %dec_label_pc_27827
  %19 = sext i32 %stack_var_-48.0.reload to i64
  %20 = mul i64 %19, 4
  %21 = add i64 %14, %20
  %22 = inttoptr i64 %21 to ptr
  store i32 1, ptr %22, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_27850

dec_label_pc_27850:                               ; preds = %dec_label_pc_27850, %dec_label_pc_2782d
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %23 = mul i64 %indvars.iv.reload, 4
  %24 = add i64 %23, %14
  %25 = inttoptr i64 %24 to ptr
  %26 = load i32, ptr %25, align 4
  call void @printIntLine(i32 %26)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_27888, label %dec_label_pc_27850

dec_label_pc_27879:                               ; preds = %dec_label_pc_27827
  call void @printLine(ptr @global_var_aa6d0)
  br label %dec_label_pc_27888

dec_label_pc_27888:                               ; preds = %dec_label_pc_27850, %dec_label_pc_27879
  %27 = icmp eq i64 %14, 0
  br i1 %27, label %dec_label_pc_2789b, label %dec_label_pc_2788f

dec_label_pc_2788f:                               ; preds = %dec_label_pc_27888
  %28 = inttoptr i64 %14 to ptr
  %29 = and i64 %rsi.0.reload, 4294967295
  %30 = inttoptr i64 %29 to ptr
  call void @_ZdaPv(ptr %28, ptr %30)
  br label %dec_label_pc_2789b

dec_label_pc_2789b:                               ; preds = %dec_label_pc_2788f, %dec_label_pc_27888, %dec_label_pc_277dd
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %0, %31
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %32, label %dec_label_pc_278b0, label %dec_label_pc_278ab

dec_label_pc_278ab:                               ; preds = %dec_label_pc_2789b
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_278b0

dec_label_pc_278b0:                               ; preds = %dec_label_pc_278ab, %dec_label_pc_2789b
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

