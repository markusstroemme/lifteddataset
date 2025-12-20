@global_var_b7918 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16
@global_var_ec040 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4765f:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv10.reg2mem = alloca i64, align 8
  %stack_var_-84.1.ph.reg2mem = alloca i32, align 4
  %stack_var_-84.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ec040, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4786e, label %dec_label_pc_4768f

dec_label_pc_4768f:                               ; preds = %dec_label_pc_4765f
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 -1, ptr %stack_var_-84.1.ph.reg2mem, align 4
  br i1 %4, label %dec_label_pc_477a7, label %dec_label_pc_476be

dec_label_pc_476be:                               ; preds = %dec_label_pc_4768f
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %7 = bitcast ptr %stack_var_-56 to ptr
  %8 = call i32 @bind(i32 %3, ptr nonnull %7, i32 16)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_47797.thread7, label %dec_label_pc_4770a

dec_label_pc_4770a:                               ; preds = %dec_label_pc_476be
  %10 = call i32 @listen(i32 %3, i32 5)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_47797.thread7, label %dec_label_pc_4771e

dec_label_pc_4771e:                               ; preds = %dec_label_pc_4770a
  %12 = call i32 @accept(i32 %3, ptr null, ptr null)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %dec_label_pc_47797.thread7, label %dec_label_pc_4773b

dec_label_pc_4773b:                               ; preds = %dec_label_pc_4771e
  %14 = call i32 @recv(i32 %12, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %15 = add i32 %14, 1
  %16 = icmp ult i32 %15, 2
  store i32 -1, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br i1 %16, label %dec_label_pc_4779d, label %dec_label_pc_47762

dec_label_pc_47762:                               ; preds = %dec_label_pc_4773b
  %17 = ptrtoint ptr %stack_var_-8 to i64
  %18 = sext i32 %14 to i64
  %19 = add i64 %17, -22
  %20 = add i64 %19, %18
  %21 = inttoptr i64 %20 to ptr
  store i8 0, ptr %21, align 1
  %22 = bitcast ptr %stack_var_-30 to ptr
  %23 = call i32 @atoi(ptr nonnull %22)
  store i32 %23, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br label %dec_label_pc_4779d

dec_label_pc_47797.thread7:                       ; preds = %dec_label_pc_4771e, %dec_label_pc_4770a, %dec_label_pc_476be
  %24 = call i32 @close(i32 %3)
  store i32 -1, ptr %stack_var_-84.1.ph.reg2mem, align 4
  br label %dec_label_pc_477a7

dec_label_pc_4779d:                               ; preds = %dec_label_pc_47762, %dec_label_pc_4773b
  %stack_var_-84.0.ph.reload = load i32, ptr %stack_var_-84.0.ph.reg2mem, align 4
  %25 = call i32 @close(i32 %3)
  %26 = call i32 @close(i32 %12)
  store i32 %stack_var_-84.0.ph.reload, ptr %stack_var_-84.1.ph.reg2mem, align 4
  br label %dec_label_pc_477a7

dec_label_pc_477a7:                               ; preds = %dec_label_pc_4768f, %dec_label_pc_47797.thread7, %dec_label_pc_4779d
  %.pr = load i32, ptr @global_var_ec040, align 4
  %27 = icmp eq i32 %.pr, 0
  br i1 %27, label %dec_label_pc_4786e, label %dec_label_pc_477b5

dec_label_pc_477b5:                               ; preds = %dec_label_pc_477a7
  %stack_var_-84.1.ph.reload = load i32, ptr %stack_var_-84.1.ph.reg2mem, align 4
  %28 = call ptr @malloc(i32 40)
  %29 = ptrtoint ptr %28 to i64
  %30 = icmp eq ptr %28, null
  %31 = icmp eq i1 %30, false
  store i64 0, ptr %indvars.iv10.reg2mem, align 8
  br i1 %31, label %dec_label_pc_477dd, label %dec_label_pc_477ca

dec_label_pc_477ca:                               ; preds = %dec_label_pc_477b5
  call void @exit(i32 -1)
  unreachable

dec_label_pc_477dd:                               ; preds = %dec_label_pc_477b5, %dec_label_pc_477dd
  %indvars.iv10.reload = load i64, ptr %indvars.iv10.reg2mem, align 8
  %32 = mul i64 %indvars.iv10.reload, 4
  %33 = add i64 %32, %29
  %34 = inttoptr i64 %33 to ptr
  store i32 0, ptr %34, align 4
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10.reload, 1
  %exitcond12 = icmp eq i64 %indvars.iv.next11, 10
  store i64 %indvars.iv.next11, ptr %indvars.iv10.reg2mem, align 8
  br i1 %exitcond12, label %dec_label_pc_47801, label %dec_label_pc_477dd

dec_label_pc_47801:                               ; preds = %dec_label_pc_477dd
  %35 = icmp slt i32 %stack_var_-84.1.ph.reload, 0
  br i1 %35, label %dec_label_pc_47853, label %dec_label_pc_47807

dec_label_pc_47807:                               ; preds = %dec_label_pc_47801
  %36 = sext i32 %stack_var_-84.1.ph.reload to i64
  %37 = mul i64 %36, 4
  %38 = add i64 %37, %29
  %39 = inttoptr i64 %38 to ptr
  store i32 1, ptr %39, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_4782a

dec_label_pc_4782a:                               ; preds = %dec_label_pc_4782a, %dec_label_pc_47807
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %40 = mul i64 %indvars.iv.reload, 4
  %41 = add i64 %40, %29
  %42 = inttoptr i64 %41 to ptr
  %43 = load i32, ptr %42, align 4
  call void @printIntLine(i32 %43)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_47862, label %dec_label_pc_4782a

dec_label_pc_47853:                               ; preds = %dec_label_pc_47801
  call void @printLine(ptr @global_var_b7918)
  br label %dec_label_pc_47862

dec_label_pc_47862:                               ; preds = %dec_label_pc_4782a, %dec_label_pc_47853
  call void @free(ptr %28)
  br label %dec_label_pc_4786e

dec_label_pc_4786e:                               ; preds = %dec_label_pc_4765f, %dec_label_pc_47862, %dec_label_pc_477a7
  %44 = call i64 @__readfsqword(i64 40)
  %45 = icmp eq i64 %0, %44
  br i1 %45, label %dec_label_pc_47883, label %dec_label_pc_4787e

dec_label_pc_4787e:                               ; preds = %dec_label_pc_4786e
  call void @__stack_chk_fail()
  br label %dec_label_pc_47883

dec_label_pc_47883:                               ; preds = %dec_label_pc_4787e, %dec_label_pc_4786e
  ret void
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

declare i16 @htons(i16) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

