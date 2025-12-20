@global_var_b49b8 = external constant [10 x i8]
@global_var_b49e8 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_1f001:
  %indvars.iv14.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-80.08.reg2mem = alloca i32, align 4
  %stack_var_-80.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-80.08.reg2mem, align 4
  br i1 %2, label %dec_label_pc_1f0f0, label %dec_label_pc_1f029

dec_label_pc_1f029:                               ; preds = %dec_label_pc_1f001
  %3 = bitcast ptr %stack_var_-56 to ptr
  %4 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %5 = call i32 @inet_addr(ptr @global_var_b49b8)
  %6 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %7 = call i32 @connect(i32 %1, ptr nonnull %3, i32 16)
  %8 = icmp eq i32 %7, -1
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br i1 %8, label %dec_label_pc_1f0cc, label %dec_label_pc_1f080

dec_label_pc_1f080:                               ; preds = %dec_label_pc_1f029
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_1f0cc, label %dec_label_pc_1f0a7

dec_label_pc_1f0a7:                               ; preds = %dec_label_pc_1f080
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = add i64 %12, -22
  %14 = bitcast ptr %stack_var_-30 to ptr
  %15 = sext i32 %9 to i64
  %16 = add i64 %13, %15
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = call i32 @atoi(ptr nonnull %14)
  store i32 %18, ptr %stack_var_-80.0.ph.reg2mem, align 4
  br label %dec_label_pc_1f0cc

dec_label_pc_1f0cc:                               ; preds = %dec_label_pc_1f029, %dec_label_pc_1f0a7, %dec_label_pc_1f080
  %stack_var_-80.0.ph.reload = load i32, ptr %stack_var_-80.0.ph.reg2mem, align 4
  %19 = call i32 @close(i32 %1)
  store i32 %stack_var_-80.0.ph.reload, ptr %stack_var_-80.08.reg2mem, align 4
  br label %dec_label_pc_1f0f0

dec_label_pc_1f0f0:                               ; preds = %dec_label_pc_1f001, %dec_label_pc_1f0cc
  %stack_var_-80.08.reload = load i32, ptr %stack_var_-80.08.reg2mem, align 4
  %20 = icmp ugt i32 %stack_var_-80.08.reload, 9
  %21 = sext i32 %stack_var_-80.08.reload to i64
  %22 = mul i64 %21, 4
  %23 = call ptr @malloc(i32 40)
  %24 = ptrtoint ptr %23 to i64
  %25 = icmp eq ptr %23, null
  %26 = icmp eq i1 %25, false
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %26, label %dec_label_pc_1f118, label %dec_label_pc_1f105

dec_label_pc_1f105:                               ; preds = %dec_label_pc_1f0f0
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1f118:                               ; preds = %dec_label_pc_1f0f0, %dec_label_pc_1f118
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %27 = mul i64 %indvars.iv.reload, 4
  %28 = add i64 %27, %24
  %29 = inttoptr i64 %28 to ptr
  store i32 0, ptr %29, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1f13c, label %dec_label_pc_1f118

dec_label_pc_1f13c:                               ; preds = %dec_label_pc_1f118
  br i1 %20, label %dec_label_pc_1f194, label %dec_label_pc_1f148

dec_label_pc_1f148:                               ; preds = %dec_label_pc_1f13c
  %30 = add i64 %22, %24
  %31 = inttoptr i64 %30 to ptr
  store i32 1, ptr %31, align 4
  store i64 0, ptr %indvars.iv14.reg2mem, align 8
  br label %dec_label_pc_1f16b

dec_label_pc_1f16b:                               ; preds = %dec_label_pc_1f16b, %dec_label_pc_1f148
  %indvars.iv14.reload = load i64, ptr %indvars.iv14.reg2mem, align 8
  %32 = mul i64 %indvars.iv14.reload, 4
  %33 = add i64 %32, %24
  %34 = inttoptr i64 %33 to ptr
  %35 = load i32, ptr %34, align 4
  call void @printIntLine(i32 %35)
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14.reload, 1
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 10
  store i64 %indvars.iv.next15, ptr %indvars.iv14.reg2mem, align 8
  br i1 %exitcond16, label %dec_label_pc_1f1bd, label %dec_label_pc_1f16b

dec_label_pc_1f194:                               ; preds = %dec_label_pc_1f13c
  call void @printLine(ptr @global_var_b49e8)
  br label %dec_label_pc_1f1bd

dec_label_pc_1f1bd:                               ; preds = %dec_label_pc_1f16b, %dec_label_pc_1f194
  call void @free(ptr %23)
  %36 = call i64 @__readfsqword(i64 40)
  %37 = icmp eq i64 %0, %36
  br i1 %37, label %dec_label_pc_1f1d2, label %dec_label_pc_1f1cd

dec_label_pc_1f1cd:                               ; preds = %dec_label_pc_1f1bd
  call void @__stack_chk_fail()
  br label %dec_label_pc_1f1d2

dec_label_pc_1f1d2:                               ; preds = %dec_label_pc_1f1cd, %dec_label_pc_1f1bd
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

