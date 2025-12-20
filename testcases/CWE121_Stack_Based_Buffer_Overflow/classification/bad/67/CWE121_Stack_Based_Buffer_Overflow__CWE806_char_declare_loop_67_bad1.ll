define void @anon0() local_unnamed_addr {
dec_label_pc_42ca3:
  %dataBuffer_-128 = alloca [100 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %dataBuffer_-136 = alloca [100 x i8], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [100 x i8] undef, i8 %2, 0
  store [100 x i8] %3, ptr %dataBuffer_-128, align 8
  %4 = bitcast ptr %dataBuffer_-128 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  %7 = call ptr @memset(ptr %6, i32 65, i32 99)
  %8 = add i64 %5, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  %10 = load i64, ptr %4, align 8
  %11 = trunc i64 %10 to i8
  %12 = insertvalue [100 x i8] undef, i8 %11, 0
  store [100 x i8] %12, ptr %dataBuffer_-136, align 8
  %13 = bitcast ptr %dataBuffer_-136 to ptr
  %14 = load i64, ptr %13, align 8
  call void @anon1(i64 %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_42d10, label %dec_label_pc_42d0b

dec_label_pc_42d0b:                               ; preds = %dec_label_pc_42ca3
  call void @__stack_chk_fail()
  br label %dec_label_pc_42d10

dec_label_pc_42d10:                               ; preds = %dec_label_pc_42d0b, %dec_label_pc_42ca3
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_42d96:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = inttoptr i64 %myStruct to ptr
  %2 = call i32 @strlen(ptr %1)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_42e37, label %dec_label_pc_42e0d.lr.ph

dec_label_pc_42e0d.lr.ph:                         ; preds = %dec_label_pc_42d96
  %4 = sext i32 %2 to i64
  %5 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_42e0d

dec_label_pc_42e0d:                               ; preds = %dec_label_pc_42e0d.lr.ph, %dec_label_pc_42e0d
  %.reload = load i64, ptr %.reg2mem, align 8
  %6 = add i64 %.reload, %myStruct
  %7 = inttoptr i64 %6 to ptr
  %8 = load i8, ptr %7, align 1
  %9 = add i64 %.reload, %5
  %10 = inttoptr i64 %9 to ptr
  store i8 %8, ptr %10, align 1
  %11 = add nuw i64 %.reload, 1
  %12 = icmp ult i64 %11, %4
  store i64 %11, ptr %.reg2mem, align 8
  br i1 %12, label %dec_label_pc_42e0d, label %dec_label_pc_42e37

dec_label_pc_42e37:                               ; preds = %dec_label_pc_42e0d, %dec_label_pc_42d96
  call void @printLine(ptr %1)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_42e5c, label %dec_label_pc_42e57

dec_label_pc_42e57:                               ; preds = %dec_label_pc_42e37
  call void @__stack_chk_fail()
  br label %dec_label_pc_42e5c

dec_label_pc_42e5c:                               ; preds = %dec_label_pc_42e57, %dec_label_pc_42e37
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

