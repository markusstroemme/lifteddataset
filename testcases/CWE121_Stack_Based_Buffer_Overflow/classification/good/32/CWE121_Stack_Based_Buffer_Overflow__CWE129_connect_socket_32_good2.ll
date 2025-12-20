@global_var_b4be8 = external constant [10 x i8]
@global_var_b4c18 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_11cd4:
  %.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_11de4.thread, label %dec_label_pc_11d37

dec_label_pc_11de4.thread:                        ; preds = %dec_label_pc_11cd4
  store i64 0, ptr %stack_var_-72, align 8
  br label %dec_label_pc_11e5c

dec_label_pc_11d37:                               ; preds = %dec_label_pc_11cd4
  %3 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %4 = call i32 @inet_addr(ptr @global_var_b4be8)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-72 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %dec_label_pc_11de4.thread6, label %dec_label_pc_11d8e

dec_label_pc_11d8e:                               ; preds = %dec_label_pc_11d37
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  switch i32 %9, label %dec_label_pc_11de4 [
    i32 -1, label %dec_label_pc_11de4.thread6
    i32 0, label %dec_label_pc_11de4.thread6
  ]

dec_label_pc_11de4.thread6:                       ; preds = %dec_label_pc_11d8e, %dec_label_pc_11d8e, %dec_label_pc_11d37
  %10 = call i32 @close(i32 %1)
  store i64 0, ptr %stack_var_-72, align 8
  br label %dec_label_pc_11e5c

dec_label_pc_11de4:                               ; preds = %dec_label_pc_11d8e
  %11 = ptrtoint ptr %stack_var_-8 to i64
  %12 = sext i32 %9 to i64
  %13 = add i64 %11, -22
  %14 = add i64 %13, %12
  %15 = inttoptr i64 %14 to ptr
  store i8 0, ptr %15, align 1
  %16 = bitcast ptr %stack_var_-30 to ptr
  %17 = call i32 @atoi(ptr nonnull %16)
  %18 = call i32 @close(i32 %1)
  store i64 0, ptr %stack_var_-72, align 8
  %19 = icmp ugt i32 %17, 9
  br i1 %19, label %dec_label_pc_11e5c, label %dec_label_pc_11e2a

dec_label_pc_11e2a:                               ; preds = %dec_label_pc_11de4
  %20 = sext i32 %17 to i64
  %21 = mul i64 %20, 4
  %22 = add i64 %11, -64
  %23 = add i64 %21, %22
  %24 = inttoptr i64 %23 to ptr
  store i32 1, ptr %24, align 4
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_11e40

dec_label_pc_11e40:                               ; preds = %dec_label_pc_11e2a, %dec_label_pc_11e40
  %.reload = load i64, ptr %.reg2mem, align 8
  %sext2 = mul i64 %.reload, 4294967296
  %25 = ashr exact i64 %sext2, 30
  %26 = add i64 %25, %22
  %27 = inttoptr i64 %26 to ptr
  %28 = load i32, ptr %27, align 4
  call void @printIntLine(i32 %28)
  %29 = add nuw nsw i64 %.reload, 1
  %30 = and i64 %29, 4294967295
  %31 = trunc i64 %29 to i32
  %32 = icmp slt i32 %31, 10
  store i64 %30, ptr %.reg2mem, align 8
  br i1 %32, label %dec_label_pc_11e40, label %dec_label_pc_11e6b

dec_label_pc_11e5c:                               ; preds = %dec_label_pc_11de4.thread6, %dec_label_pc_11de4.thread, %dec_label_pc_11de4
  call void @printLine(ptr @global_var_b4c18)
  br label %dec_label_pc_11e6b

dec_label_pc_11e6b:                               ; preds = %dec_label_pc_11e40, %dec_label_pc_11e5c
  %33 = call i64 @__readfsqword(i64 40)
  %34 = icmp eq i64 %0, %33
  br i1 %34, label %dec_label_pc_11e80, label %dec_label_pc_11e7b

dec_label_pc_11e7b:                               ; preds = %dec_label_pc_11e6b
  call void @__stack_chk_fail()
  br label %dec_label_pc_11e80

dec_label_pc_11e80:                               ; preds = %dec_label_pc_11e7b, %dec_label_pc_11e6b
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

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

