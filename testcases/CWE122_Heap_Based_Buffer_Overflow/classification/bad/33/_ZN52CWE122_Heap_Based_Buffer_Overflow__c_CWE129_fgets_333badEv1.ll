@global_var_ba2c8 = external constant [16 x i8]
@global_var_ba2d8 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@0 = external global i32
@global_var_ec080 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_854fd:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_8556f, label %dec_label_pc_8555e

dec_label_pc_8555e:                               ; preds = %dec_label_pc_854fd
  %7 = call i32 @atoi(ptr nonnull %2)
  store i32 %7, ptr %.reg2mem, align 4
  br label %dec_label_pc_8557e

dec_label_pc_8556f:                               ; preds = %dec_label_pc_854fd
  call void @printLine(ptr @global_var_ba2c8)
  store i32 -1, ptr %.reg2mem, align 4
  br label %dec_label_pc_8557e

dec_label_pc_8557e:                               ; preds = %dec_label_pc_8556f, %dec_label_pc_8555e
  %.reload = load i32, ptr %.reg2mem, align 4
  %8 = call ptr @malloc(i32 40)
  %9 = ptrtoint ptr %8 to i64
  %10 = icmp eq ptr %8, null
  %11 = icmp eq i1 %10, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %11, label %dec_label_pc_855af, label %dec_label_pc_8559c

dec_label_pc_8559c:                               ; preds = %dec_label_pc_8557e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_855af:                               ; preds = %dec_label_pc_8557e, %dec_label_pc_855af
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %12 = mul i64 %indvars.iv5.reload, 4
  %13 = add i64 %12, %9
  %14 = inttoptr i64 %13 to ptr
  store i32 0, ptr %14, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_855d3, label %dec_label_pc_855af

dec_label_pc_855d3:                               ; preds = %dec_label_pc_855af
  %15 = icmp slt i32 %.reload, 0
  br i1 %15, label %dec_label_pc_85625, label %dec_label_pc_855d9

dec_label_pc_855d9:                               ; preds = %dec_label_pc_855d3
  %16 = sext i32 %.reload to i64
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %9
  %19 = inttoptr i64 %18 to ptr
  store i32 1, ptr %19, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_855fc

dec_label_pc_855fc:                               ; preds = %dec_label_pc_855fc, %dec_label_pc_855d9
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %20 = mul i64 %indvars.iv.reload, 4
  %21 = add i64 %20, %9
  %22 = inttoptr i64 %21 to ptr
  %23 = load i32, ptr %22, align 4
  call void @printIntLine(i32 %23)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_85634, label %dec_label_pc_855fc

dec_label_pc_85625:                               ; preds = %dec_label_pc_855d3
  call void @printLine(ptr @global_var_ba2d8)
  br label %dec_label_pc_85634

dec_label_pc_85634:                               ; preds = %dec_label_pc_855fc, %dec_label_pc_85625
  call void @free(ptr %8)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %0, %24
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %25, label %dec_label_pc_85655, label %dec_label_pc_85650

dec_label_pc_85650:                               ; preds = %dec_label_pc_85634
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_85655

dec_label_pc_85655:                               ; preds = %dec_label_pc_85650, %dec_label_pc_85634
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

