@global_var_b8250 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_53e8a:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 -1, ptr %stack_var_-72, align 8
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_53fc4, label %dec_label_pc_53edb

dec_label_pc_53edb:                               ; preds = %dec_label_pc_53e8a
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_53fb4.thread4, label %dec_label_pc_53f27

dec_label_pc_53f27:                               ; preds = %dec_label_pc_53edb
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_53fb4.thread4, label %dec_label_pc_53f3b

dec_label_pc_53f3b:                               ; preds = %dec_label_pc_53f27
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_53fb4.thread4, label %dec_label_pc_53f58

dec_label_pc_53f58:                               ; preds = %dec_label_pc_53f3b
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %dec_label_pc_53fba, label %dec_label_pc_53f7f

dec_label_pc_53f7f:                               ; preds = %dec_label_pc_53f58
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
  br label %dec_label_pc_53fba

dec_label_pc_53fb4.thread4:                       ; preds = %dec_label_pc_53f3b, %dec_label_pc_53f27, %dec_label_pc_53edb
  %23 = call i32 @close(i32 %1)
  br label %dec_label_pc_53fc4

dec_label_pc_53fba:                               ; preds = %dec_label_pc_53f7f, %dec_label_pc_53f58
  %24 = call i32 @close(i32 %1)
  %25 = call i32 @close(i32 %10)
  br label %dec_label_pc_53fc4

dec_label_pc_53fc4:                               ; preds = %dec_label_pc_53e8a, %dec_label_pc_53fb4.thread4, %dec_label_pc_53fba
  %26 = bitcast ptr %stack_var_-72 to ptr
  call void @anon1(ptr nonnull %26)
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_53fe5, label %dec_label_pc_53fe0

dec_label_pc_53fe0:                               ; preds = %dec_label_pc_53fc4
  call void @__stack_chk_fail()
  br label %dec_label_pc_53fe5

dec_label_pc_53fe5:                               ; preds = %dec_label_pc_53fe0, %dec_label_pc_53fc4
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_541af:
  %0 = alloca i64, align 8
  %.reg2mem4 = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %.reg2mem, align 8
  br i1 %6, label %dec_label_pc_541f8, label %dec_label_pc_541e5

dec_label_pc_541e5:                               ; preds = %dec_label_pc_541af
  call void @exit(i32 -1)
  unreachable

dec_label_pc_541f8:                               ; preds = %dec_label_pc_541af, %dec_label_pc_541f8
  %.reload = load i64, ptr %.reg2mem, align 8
  %sext1 = mul i64 %.reload, 4294967296
  %7 = ashr exact i64 %sext1, 30
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = add nuw nsw i64 %.reload, 1
  %11 = and i64 %10, 4294967295
  %12 = trunc i64 %10 to i32
  %13 = icmp slt i32 %12, 10
  store i64 %11, ptr %.reg2mem, align 8
  br i1 %13, label %dec_label_pc_541f8, label %dec_label_pc_5421c

dec_label_pc_5421c:                               ; preds = %dec_label_pc_541f8
  %14 = icmp slt i32 %2, 0
  br i1 %14, label %dec_label_pc_5426e, label %dec_label_pc_54222

dec_label_pc_54222:                               ; preds = %dec_label_pc_5421c
  %sext3 = mul i64 %1, 4294967296
  %15 = ashr exact i64 %sext3, 30
  %16 = add i64 %15, %4
  %17 = inttoptr i64 %16 to ptr
  store i32 1, ptr %17, align 4
  store i64 0, ptr %.reg2mem4, align 8
  br label %dec_label_pc_54245

dec_label_pc_54245:                               ; preds = %dec_label_pc_54222, %dec_label_pc_54245
  %.reload5 = load i64, ptr %.reg2mem4, align 8
  %sext = mul i64 %.reload5, 4294967296
  %18 = ashr exact i64 %sext, 30
  %19 = add i64 %18, %4
  %20 = inttoptr i64 %19 to ptr
  %21 = load i32, ptr %20, align 4
  call void @printIntLine(i32 %21)
  %22 = add nuw nsw i64 %.reload5, 1
  %23 = and i64 %22, 4294967295
  %24 = trunc i64 %22 to i32
  %25 = icmp slt i32 %24, 10
  store i64 %23, ptr %.reg2mem4, align 8
  br i1 %25, label %dec_label_pc_54245, label %dec_label_pc_5427d

dec_label_pc_5426e:                               ; preds = %dec_label_pc_5421c
  call void @printLine(ptr @global_var_b8250)
  br label %dec_label_pc_5427d

dec_label_pc_5427d:                               ; preds = %dec_label_pc_54245, %dec_label_pc_5426e
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

