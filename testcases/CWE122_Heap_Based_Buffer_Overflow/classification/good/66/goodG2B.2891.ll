define void @anon1() local_unnamed_addr {
dec_label_pc_1d0df:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = bitcast ptr %1 to ptr
  %3 = insertvalue [5 x ptr] undef, ptr %2, 0
  store [5 x ptr] %3, ptr %dataArray_-64, align 8
  %4 = bitcast ptr %dataArray_-64 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_1d121, label %dec_label_pc_1d117

dec_label_pc_1d117:                               ; preds = %dec_label_pc_1d0df
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1d121:                               ; preds = %dec_label_pc_1d0df
  %8 = inttoptr i64 %5 to ptr
  store i8 0, ptr %8, align 1
  %9 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_1d151, label %dec_label_pc_1d14c

dec_label_pc_1d14c:                               ; preds = %dec_label_pc_1d121
  call void @__stack_chk_fail()
  br label %dec_label_pc_1d151

dec_label_pc_1d151:                               ; preds = %dec_label_pc_1d14c, %dec_label_pc_1d121
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_1d26d:
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %6 = load i64, ptr %stack_var_-136, align 8
  %7 = inttoptr i64 %4 to ptr
  store i64 %6, ptr %7, align 8
  %8 = add i64 %4, 8
  %9 = inttoptr i64 %8 to ptr
  %10 = add i64 %4, 16
  %11 = inttoptr i64 %10 to ptr
  %12 = add i64 %4, 24
  %13 = inttoptr i64 %12 to ptr
  %14 = add i64 %4, 32
  %15 = inttoptr i64 %14 to ptr
  %16 = add i64 %4, 40
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %4, 48
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %4, 56
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %4, 64
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %4, 72
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %4, 80
  %27 = inttoptr i64 %26 to ptr
  %28 = add i64 %4, 88
  %29 = inttoptr i64 %28 to ptr
  %30 = add i64 %4, 96
  %31 = inttoptr i64 %30 to ptr
  %32 = add i64 %4, 99
  %33 = inttoptr i64 %32 to ptr
  store i8 0, ptr %33, align 1
  %34 = inttoptr i64 %4 to ptr
  call void @printLine(ptr %34)
  call void @free(ptr %7)
  %35 = call i64 @__readfsqword(i64 40)
  %36 = icmp eq i64 %0, %35
  br i1 %36, label %dec_label_pc_1d36c, label %dec_label_pc_1d367

dec_label_pc_1d367:                               ; preds = %dec_label_pc_1d26d
  call void @__stack_chk_fail()
  br label %dec_label_pc_1d36c

dec_label_pc_1d36c:                               ; preds = %dec_label_pc_1d367, %dec_label_pc_1d26d
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

