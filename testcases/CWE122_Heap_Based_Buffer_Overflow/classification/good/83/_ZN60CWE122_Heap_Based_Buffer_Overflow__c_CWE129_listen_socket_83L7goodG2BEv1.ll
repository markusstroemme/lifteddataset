@global_var_bc1b0 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_9291a:
  %0 = bitcast ptr %result to ptr
  store i32 7, ptr %0, align 4
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_92940:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %0 = call ptr @malloc(i32 40)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %3, label %dec_label_pc_92978, label %dec_label_pc_92965

dec_label_pc_92965:                               ; preds = %dec_label_pc_92940
  call void @exit(i32 -1)
  unreachable

dec_label_pc_92978:                               ; preds = %dec_label_pc_92940, %dec_label_pc_92978
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %4 = mul i64 %indvars.iv4.reload, 4
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_9299c, label %dec_label_pc_92978

dec_label_pc_9299c:                               ; preds = %dec_label_pc_92978
  %7 = bitcast ptr %rdi to ptr
  %8 = load i32, ptr %7, align 8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %dec_label_pc_929f5, label %dec_label_pc_929a6

dec_label_pc_929a6:                               ; preds = %dec_label_pc_9299c
  %10 = sext i32 %8 to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %11, %1
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_929cc

dec_label_pc_929cc:                               ; preds = %dec_label_pc_929cc, %dec_label_pc_929a6
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %1
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_92a04, label %dec_label_pc_929cc

dec_label_pc_929f5:                               ; preds = %dec_label_pc_9299c
  call void @printLine(ptr @global_var_bc1b0)
  br label %dec_label_pc_92a04

dec_label_pc_92a04:                               ; preds = %dec_label_pc_929cc, %dec_label_pc_929f5
  call void @free(ptr %0)
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_92a68:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-24, i32 -1)
  call void @anon1(ptr nonnull %stack_var_-24)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_92abb, label %dec_label_pc_92ab6

dec_label_pc_92ab6:                               ; preds = %dec_label_pc_92a68
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_92abb

dec_label_pc_92abb:                               ; preds = %dec_label_pc_92ab6, %dec_label_pc_92a68
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

declare i64 @__readfsqword(i64) local_unnamed_addr

