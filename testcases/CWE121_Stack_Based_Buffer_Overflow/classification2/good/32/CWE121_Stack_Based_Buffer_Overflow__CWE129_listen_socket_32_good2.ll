@global_var_b7f68 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_398fd:
  %.reg2mem = alloca i64, align 8
  %stack_var_-112.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_39a50.thread, label %dec_label_pc_39967

dec_label_pc_39967:                               ; preds = %dec_label_pc_398fd
  %3 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-72 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_39a40.thread9, label %dec_label_pc_399b3

dec_label_pc_399b3:                               ; preds = %dec_label_pc_39967
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_39a40.thread9, label %dec_label_pc_399c7

dec_label_pc_399c7:                               ; preds = %dec_label_pc_399b3
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_39a40.thread9, label %dec_label_pc_399e4

dec_label_pc_399e4:                               ; preds = %dec_label_pc_399c7
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  store i32 -1, ptr %stack_var_-112.0.ph.reg2mem, align 4
  store i32 -1, ptr %stack_var_-112.0.ph.reg2mem, align 4
  switch i32 %13, label %dec_label_pc_39a0b [
    i32 -1, label %dec_label_pc_39a50
    i32 0, label %dec_label_pc_39a50
  ]

dec_label_pc_39a0b:                               ; preds = %dec_label_pc_399e4
  %14 = sext i32 %13 to i64
  %15 = add i64 %12, -22
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = bitcast ptr %stack_var_-30 to ptr
  %19 = call i32 @atoi(ptr nonnull %18)
  store i32 %19, ptr %stack_var_-112.0.ph.reg2mem, align 4
  br label %dec_label_pc_39a50

dec_label_pc_39a40.thread9:                       ; preds = %dec_label_pc_399c7, %dec_label_pc_399b3, %dec_label_pc_39967
  %20 = call i32 @close(i32 %1)
  br label %dec_label_pc_39a50.thread

dec_label_pc_39a50.thread:                        ; preds = %dec_label_pc_39a40.thread9, %dec_label_pc_398fd
  store i64 0, ptr %stack_var_-72, align 8
  br label %dec_label_pc_39ac8

dec_label_pc_39a50:                               ; preds = %dec_label_pc_39a0b, %dec_label_pc_399e4, %dec_label_pc_399e4
  %stack_var_-112.0.ph.reload = load i32, ptr %stack_var_-112.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %1)
  %22 = call i32 @close(i32 %10)
  store i64 0, ptr %stack_var_-72, align 8
  %23 = icmp ugt i32 %stack_var_-112.0.ph.reload, 9
  br i1 %23, label %dec_label_pc_39ac8, label %dec_label_pc_39a96

dec_label_pc_39a96:                               ; preds = %dec_label_pc_39a50
  %24 = sext i32 %stack_var_-112.0.ph.reload to i64
  %25 = mul i64 %24, 4
  %26 = add i64 %12, -64
  %27 = add i64 %25, %26
  %28 = inttoptr i64 %27 to ptr
  store i32 1, ptr %28, align 4
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_39aac

dec_label_pc_39aac:                               ; preds = %dec_label_pc_39a96, %dec_label_pc_39aac
  %.reload = load i64, ptr %.reg2mem, align 8
  %sext2 = mul i64 %.reload, 4294967296
  %29 = ashr exact i64 %sext2, 30
  %30 = add i64 %29, %26
  %31 = inttoptr i64 %30 to ptr
  %32 = load i32, ptr %31, align 4
  call void @printIntLine(i32 %32)
  %33 = add nuw nsw i64 %.reload, 1
  %34 = and i64 %33, 4294967295
  %35 = trunc i64 %33 to i32
  %36 = icmp slt i32 %35, 10
  store i64 %34, ptr %.reg2mem, align 8
  br i1 %36, label %dec_label_pc_39aac, label %dec_label_pc_39ad7

dec_label_pc_39ac8:                               ; preds = %dec_label_pc_39a50.thread, %dec_label_pc_39a50
  call void @printLine(ptr @global_var_b7f68)
  br label %dec_label_pc_39ad7

dec_label_pc_39ad7:                               ; preds = %dec_label_pc_39aac, %dec_label_pc_39ac8
  %37 = call i64 @__readfsqword(i64 40)
  %38 = icmp eq i64 %0, %37
  br i1 %38, label %dec_label_pc_39aec, label %dec_label_pc_39ae7

dec_label_pc_39ae7:                               ; preds = %dec_label_pc_39ad7
  call void @__stack_chk_fail()
  br label %dec_label_pc_39aec

dec_label_pc_39aec:                               ; preds = %dec_label_pc_39ae7, %dec_label_pc_39ad7
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

