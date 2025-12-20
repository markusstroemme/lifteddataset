define void @anon0() local_unnamed_addr {
dec_label_pc_18a31:
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %2, label %dec_label_pc_18a9a, label %dec_label_pc_18a69

dec_label_pc_18a69:                               ; preds = %dec_label_pc_18a31
  br i1 %5, label %dec_label_pc_18ac9, label %dec_label_pc_18a84

dec_label_pc_18a84:                               ; preds = %dec_label_pc_18a69
  call void @exit(i32 -1)
  unreachable

dec_label_pc_18a9a:                               ; preds = %dec_label_pc_18a31
  br i1 %5, label %dec_label_pc_18ac9, label %dec_label_pc_18ab5

dec_label_pc_18ab5:                               ; preds = %dec_label_pc_18a9a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_18ac9:                               ; preds = %dec_label_pc_18a9a, %dec_label_pc_18a69
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  %7 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %8 = ptrtoint ptr %3 to i64
  %9 = load i64, ptr %stack_var_-136, align 8
  store i64 %9, ptr %3, align 8
  %10 = add i64 %8, 8
  %11 = inttoptr i64 %10 to ptr
  %12 = add i64 %8, 16
  %13 = inttoptr i64 %12 to ptr
  %14 = add i64 %8, 24
  %15 = inttoptr i64 %14 to ptr
  %16 = add i64 %8, 32
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %8, 40
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %8, 48
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %8, 56
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %8, 64
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %8, 72
  %27 = inttoptr i64 %26 to ptr
  %28 = add i64 %8, 80
  %29 = inttoptr i64 %28 to ptr
  %30 = add i64 %8, 88
  %31 = inttoptr i64 %30 to ptr
  %32 = add i64 %8, 96
  %33 = inttoptr i64 %32 to ptr
  %34 = add i64 %8, 99
  %35 = inttoptr i64 %34 to ptr
  store i8 0, ptr %35, align 1
  call void @printLine(ptr %6)
  call void @free(ptr %3)
  %36 = call i64 @__readfsqword(i64 40)
  %37 = icmp eq i64 %0, %36
  br i1 %37, label %dec_label_pc_18b90, label %dec_label_pc_18b8b

dec_label_pc_18b8b:                               ; preds = %dec_label_pc_18ac9
  call void @__stack_chk_fail()
  br label %dec_label_pc_18b90

dec_label_pc_18b90:                               ; preds = %dec_label_pc_18b8b, %dec_label_pc_18ac9
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3e3e1:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

