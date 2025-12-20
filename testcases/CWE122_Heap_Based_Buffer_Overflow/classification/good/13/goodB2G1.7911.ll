@global_var_b7c40 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_4beb1:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv13.reg2mem = alloca i64, align 8
  %stack_var_-84.069.reg2mem = alloca i32, align 4
  %stack_var_-84.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-84.069.reg2mem, align 4
  br i1 %2, label %dec_label_pc_4c019, label %dec_label_pc_4bf11

dec_label_pc_4bf11:                               ; preds = %dec_label_pc_4beb1
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_4bfea.thread10, label %dec_label_pc_4bf5d

dec_label_pc_4bf5d:                               ; preds = %dec_label_pc_4bf11
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_4bfea.thread10, label %dec_label_pc_4bf71

dec_label_pc_4bf71:                               ; preds = %dec_label_pc_4bf5d
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_4bfea.thread10, label %dec_label_pc_4bf8e

dec_label_pc_4bf8e:                               ; preds = %dec_label_pc_4bf71
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 -1, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_4bff0, label %dec_label_pc_4bfb5

dec_label_pc_4bfb5:                               ; preds = %dec_label_pc_4bf8e
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br label %dec_label_pc_4bff0

dec_label_pc_4bfea.thread10:                      ; preds = %dec_label_pc_4bf71, %dec_label_pc_4bf5d, %dec_label_pc_4bf11
  %22 = call i32 @close(i32 %1)
  store i32 -1, ptr %stack_var_-84.069.reg2mem, align 4
  br label %dec_label_pc_4c019

dec_label_pc_4bff0:                               ; preds = %dec_label_pc_4bfb5, %dec_label_pc_4bf8e
  %stack_var_-84.0.ph.reload = load i32, ptr %stack_var_-84.0.ph.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  store i32 %stack_var_-84.0.ph.reload, ptr %stack_var_-84.069.reg2mem, align 4
  br label %dec_label_pc_4c019

dec_label_pc_4c019:                               ; preds = %dec_label_pc_4beb1, %dec_label_pc_4bfea.thread10, %dec_label_pc_4bff0
  %stack_var_-84.069.reload = load i32, ptr %stack_var_-84.069.reg2mem, align 4
  %25 = call ptr @malloc(i32 40)
  %26 = ptrtoint ptr %25 to i64
  %27 = icmp eq ptr %25, null
  %28 = icmp eq i1 %27, false
  store i64 0, ptr %indvars.iv13.reg2mem, align 8
  br i1 %28, label %dec_label_pc_4c041, label %dec_label_pc_4c02e

dec_label_pc_4c02e:                               ; preds = %dec_label_pc_4c019
  call void @exit(i32 -1)
  unreachable

dec_label_pc_4c041:                               ; preds = %dec_label_pc_4c019, %dec_label_pc_4c041
  %indvars.iv13.reload = load i64, ptr %indvars.iv13.reg2mem, align 8
  %29 = mul i64 %indvars.iv13.reload, 4
  %30 = add i64 %29, %26
  %31 = inttoptr i64 %30 to ptr
  store i32 0, ptr %31, align 4
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13.reload, 1
  %exitcond15 = icmp eq i64 %indvars.iv.next14, 10
  store i64 %indvars.iv.next14, ptr %indvars.iv13.reg2mem, align 8
  br i1 %exitcond15, label %dec_label_pc_4c065, label %dec_label_pc_4c041

dec_label_pc_4c065:                               ; preds = %dec_label_pc_4c041
  %32 = icmp ugt i32 %stack_var_-84.069.reload, 9
  br i1 %32, label %dec_label_pc_4c0bd, label %dec_label_pc_4c071

dec_label_pc_4c071:                               ; preds = %dec_label_pc_4c065
  %33 = sext i32 %stack_var_-84.069.reload to i64
  %34 = mul i64 %33, 4
  %35 = add i64 %34, %26
  %36 = inttoptr i64 %35 to ptr
  store i32 1, ptr %36, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_4c094

dec_label_pc_4c094:                               ; preds = %dec_label_pc_4c094, %dec_label_pc_4c071
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %37 = mul i64 %indvars.iv.reload, 4
  %38 = add i64 %37, %26
  %39 = inttoptr i64 %38 to ptr
  %40 = load i32, ptr %39, align 4
  call void @printIntLine(i32 %40)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4c0cc, label %dec_label_pc_4c094

dec_label_pc_4c0bd:                               ; preds = %dec_label_pc_4c065
  call void @printLine(ptr @global_var_b7c40)
  br label %dec_label_pc_4c0cc

dec_label_pc_4c0cc:                               ; preds = %dec_label_pc_4c094, %dec_label_pc_4c0bd
  call void @free(ptr %25)
  %41 = call i64 @__readfsqword(i64 40)
  %42 = icmp eq i64 %0, %41
  br i1 %42, label %dec_label_pc_4c0ed, label %dec_label_pc_4c0e8

dec_label_pc_4c0e8:                               ; preds = %dec_label_pc_4c0cc
  call void @__stack_chk_fail()
  br label %dec_label_pc_4c0ed

dec_label_pc_4c0ed:                               ; preds = %dec_label_pc_4c0e8, %dec_label_pc_4c0cc
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

