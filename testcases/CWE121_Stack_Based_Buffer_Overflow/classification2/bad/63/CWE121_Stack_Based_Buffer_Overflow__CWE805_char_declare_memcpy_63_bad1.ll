define void @anon0() local_unnamed_addr {
dec_label_pc_4a431:
  %dataBadBuffer_-128 = alloca [50 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [50 x i8] undef, i8 %2, 0
  store [50 x i8] %3, ptr %dataBadBuffer_-128, align 8
  %4 = bitcast ptr %dataBadBuffer_-128 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = bitcast ptr %dataBadBuffer_-128 to ptr
  call void @anon1(ptr nonnull %7)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_4a47c, label %dec_label_pc_4a477

dec_label_pc_4a477:                               ; preds = %dec_label_pc_4a431
  call void @__stack_chk_fail()
  br label %dec_label_pc_4a47c

dec_label_pc_4a47c:                               ; preds = %dec_label_pc_4a477, %dec_label_pc_4a431
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_4a4e0:
  %0 = ptrtoint ptr %dataPtr to i64
  %stack_var_-136 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %3 = load i64, ptr %stack_var_-136, align 8
  %4 = bitcast ptr %dataPtr to ptr
  store i64 %3, ptr %4, align 8
  %5 = add i64 %0, 8
  %6 = inttoptr i64 %5 to ptr
  %7 = add i64 %0, 16
  %8 = inttoptr i64 %7 to ptr
  %9 = add i64 %0, 24
  %10 = inttoptr i64 %9 to ptr
  %11 = add i64 %0, 32
  %12 = inttoptr i64 %11 to ptr
  %13 = add i64 %0, 40
  %14 = inttoptr i64 %13 to ptr
  %15 = add i64 %0, 48
  %16 = inttoptr i64 %15 to ptr
  %17 = add i64 %0, 56
  %18 = inttoptr i64 %17 to ptr
  %19 = add i64 %0, 64
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %0, 72
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %0, 80
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %0, 88
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %0, 96
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %0, 99
  %30 = inttoptr i64 %29 to ptr
  store i8 0, ptr %30, align 1
  %31 = bitcast ptr %dataPtr to ptr
  call void @printLine(ptr %31)
  %32 = call i64 @__readfsqword(i64 40)
  %33 = icmp eq i64 %1, %32
  br i1 %33, label %dec_label_pc_4a5cf, label %dec_label_pc_4a5ca

dec_label_pc_4a5ca:                               ; preds = %dec_label_pc_4a4e0
  call void @__stack_chk_fail()
  br label %dec_label_pc_4a5cf

dec_label_pc_4a5cf:                               ; preds = %dec_label_pc_4a5ca, %dec_label_pc_4a4e0
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

