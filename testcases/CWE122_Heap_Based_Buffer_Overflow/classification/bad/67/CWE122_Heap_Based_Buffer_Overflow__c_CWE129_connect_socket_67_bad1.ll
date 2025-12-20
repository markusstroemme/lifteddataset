@global_var_b506c = external constant [10 x i8]
@global_var_b5078 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_2574b:
  %stack_var_-68.04.reg2mem = alloca i64, align 8
  %stack_var_-68.0.ph.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i64 4294967295, ptr %stack_var_-68.04.reg2mem, align 8
  br i1 %2, label %dec_label_pc_25842, label %dec_label_pc_25795

dec_label_pc_25795:                               ; preds = %dec_label_pc_2574b
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_b506c)
  %5 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  store i64 4294967295, ptr %stack_var_-68.0.ph.reg2mem, align 8
  br i1 %8, label %dec_label_pc_25838, label %dec_label_pc_257ec

dec_label_pc_257ec:                               ; preds = %dec_label_pc_25795
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  store i64 4294967295, ptr %stack_var_-68.0.ph.reg2mem, align 8
  br i1 %11, label %dec_label_pc_25838, label %dec_label_pc_25813

dec_label_pc_25813:                               ; preds = %dec_label_pc_257ec
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = sext i32 %9 to i64
  %14 = add i64 %12, -22
  %15 = add i64 %14, %13
  %16 = inttoptr i64 %15 to ptr
  store i8 0, ptr %16, align 1
  %17 = bitcast ptr %stack_var_-30 to ptr
  %18 = call i32 @atoi(ptr nonnull %17)
  %phitmp = zext i32 %18 to i64
  store i64 %phitmp, ptr %stack_var_-68.0.ph.reg2mem, align 8
  br label %dec_label_pc_25838

dec_label_pc_25838:                               ; preds = %dec_label_pc_25795, %dec_label_pc_25813, %dec_label_pc_257ec
  %stack_var_-68.0.ph.reload = load i64, ptr %stack_var_-68.0.ph.reg2mem, align 8
  %19 = call i32 @close(i32 %1)
  store i64 %stack_var_-68.0.ph.reload, ptr %stack_var_-68.04.reg2mem, align 8
  br label %dec_label_pc_25842

dec_label_pc_25842:                               ; preds = %dec_label_pc_2574b, %dec_label_pc_25838
  %stack_var_-68.04.reload = load i64, ptr %stack_var_-68.04.reg2mem, align 8
  call void @anon1(i64 %stack_var_-68.04.reload)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_25867, label %dec_label_pc_25862

dec_label_pc_25862:                               ; preds = %dec_label_pc_25842
  call void @__stack_chk_fail()
  br label %dec_label_pc_25867

dec_label_pc_25867:                               ; preds = %dec_label_pc_25862, %dec_label_pc_25842
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_259d3:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %sext = mul i64 %myStruct, 4294967296
  %0 = call ptr @malloc(i32 40)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br i1 %3, label %dec_label_pc_25a10, label %dec_label_pc_259fd

dec_label_pc_259fd:                               ; preds = %dec_label_pc_259d3
  call void @exit(i32 -1)
  unreachable

dec_label_pc_25a10:                               ; preds = %dec_label_pc_259d3, %dec_label_pc_25a10
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %4 = mul i64 %indvars.iv6.reload, 4
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_25a34, label %dec_label_pc_25a10

dec_label_pc_25a34:                               ; preds = %dec_label_pc_25a10
  %7 = trunc i64 %myStruct to i32
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %dec_label_pc_25a86, label %dec_label_pc_25a3a

dec_label_pc_25a3a:                               ; preds = %dec_label_pc_25a34
  %9 = ashr exact i64 %sext, 30
  %10 = add i64 %9, %1
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_25a5d

dec_label_pc_25a5d:                               ; preds = %dec_label_pc_25a5d, %dec_label_pc_25a3a
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %1
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_25a95, label %dec_label_pc_25a5d

dec_label_pc_25a86:                               ; preds = %dec_label_pc_25a34
  call void @printLine(ptr @global_var_b5078)
  br label %dec_label_pc_25a95

dec_label_pc_25a95:                               ; preds = %dec_label_pc_25a5d, %dec_label_pc_25a86
  call void @free(ptr %0)
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

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

