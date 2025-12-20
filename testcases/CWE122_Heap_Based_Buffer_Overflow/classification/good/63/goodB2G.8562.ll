@global_var_b8228 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon1() local_unnamed_addr {
dec_label_pc_53a89:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 -1, ptr %stack_var_-72, align 8
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_53bc3, label %dec_label_pc_53ada

dec_label_pc_53ada:                               ; preds = %dec_label_pc_53a89
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_53bb3.thread4, label %dec_label_pc_53b26

dec_label_pc_53b26:                               ; preds = %dec_label_pc_53ada
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_53bb3.thread4, label %dec_label_pc_53b3a

dec_label_pc_53b3a:                               ; preds = %dec_label_pc_53b26
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_53bb3.thread4, label %dec_label_pc_53b57

dec_label_pc_53b57:                               ; preds = %dec_label_pc_53b3a
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %dec_label_pc_53bb9, label %dec_label_pc_53b7e

dec_label_pc_53b7e:                               ; preds = %dec_label_pc_53b57
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  %22 = sext i32 %21 to i64
  store i64 %22, ptr %stack_var_-72, align 8
  br label %dec_label_pc_53bb9

dec_label_pc_53bb3.thread4:                       ; preds = %dec_label_pc_53b3a, %dec_label_pc_53b26, %dec_label_pc_53ada
  %23 = call i32 @close(i32 %1)
  br label %dec_label_pc_53bc3

dec_label_pc_53bb9:                               ; preds = %dec_label_pc_53b7e, %dec_label_pc_53b57
  %24 = call i32 @close(i32 %1)
  %25 = call i32 @close(i32 %10)
  br label %dec_label_pc_53bc3

dec_label_pc_53bc3:                               ; preds = %dec_label_pc_53a89, %dec_label_pc_53bb3.thread4, %dec_label_pc_53bb9
  %26 = bitcast ptr %stack_var_-72 to ptr
  call void @anon0(ptr nonnull %26)
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_53be4, label %dec_label_pc_53bdf

dec_label_pc_53bdf:                               ; preds = %dec_label_pc_53bc3
  call void @__stack_chk_fail()
  br label %dec_label_pc_53be4

dec_label_pc_53be4:                               ; preds = %dec_label_pc_53bdf, %dec_label_pc_53bc3
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_53daf:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %6, label %dec_label_pc_53df0, label %dec_label_pc_53ddd

dec_label_pc_53ddd:                               ; preds = %dec_label_pc_53daf
  call void @exit(i32 -1)
  unreachable

dec_label_pc_53df0:                               ; preds = %dec_label_pc_53daf, %dec_label_pc_53df0
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %7 = mul i64 %indvars.iv5.reload, 4
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_53e14, label %dec_label_pc_53df0

dec_label_pc_53e14:                               ; preds = %dec_label_pc_53df0
  %10 = icmp ugt i32 %2, 9
  br i1 %10, label %dec_label_pc_53e6c, label %dec_label_pc_53e20

dec_label_pc_53e20:                               ; preds = %dec_label_pc_53e14
  %sext = mul i64 %1, 4294967296
  %11 = ashr exact i64 %sext, 30
  %12 = add i64 %11, %4
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_53e43

dec_label_pc_53e43:                               ; preds = %dec_label_pc_53e43, %dec_label_pc_53e20
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %4
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_53e7b, label %dec_label_pc_53e43

dec_label_pc_53e6c:                               ; preds = %dec_label_pc_53e14
  call void @printLine(ptr @global_var_b8228)
  br label %dec_label_pc_53e7b

dec_label_pc_53e7b:                               ; preds = %dec_label_pc_53e43, %dec_label_pc_53e6c
  call void @free(ptr %3)
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

