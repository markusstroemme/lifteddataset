define void @anon0() local_unnamed_addr {
dec_label_pc_1c7b8:
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 50)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_1c7fc, label %dec_label_pc_1c7f2

dec_label_pc_1c7f2:                               ; preds = %dec_label_pc_1c7b8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1c7fc:                               ; preds = %dec_label_pc_1c7b8
  store i8 0, ptr %2, align 1
  call void @anon1(ptr nonnull %stack_var_-24)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_1c824, label %dec_label_pc_1c81f

dec_label_pc_1c81f:                               ; preds = %dec_label_pc_1c7fc
  call void @__stack_chk_fail()
  br label %dec_label_pc_1c824

dec_label_pc_1c824:                               ; preds = %dec_label_pc_1c81f, %dec_label_pc_1c7fc
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_1c8a9:
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
  call void @free(ptr %4)
  %32 = call i64 @__readfsqword(i64 40)
  %33 = icmp eq i64 %1, %32
  br i1 %33, label %dec_label_pc_1c9a7, label %dec_label_pc_1c9a2

dec_label_pc_1c9a2:                               ; preds = %dec_label_pc_1c8a9
  call void @__stack_chk_fail()
  br label %dec_label_pc_1c9a7

dec_label_pc_1c9a7:                               ; preds = %dec_label_pc_1c9a2, %dec_label_pc_1c8a9
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

