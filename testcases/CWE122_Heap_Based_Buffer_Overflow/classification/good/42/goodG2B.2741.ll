define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_1b2b9:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_1b2e8, label %dec_label_pc_1b2de

dec_label_pc_1b2de:                               ; preds = %dec_label_pc_1b2b9
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1b2e8:                               ; preds = %dec_label_pc_1b2b9
  %3 = bitcast ptr %0 to ptr
  store i8 0, ptr %3, align 1
  ret ptr %3
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1b2f5:
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @anon0(ptr null)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %4 = load i64, ptr %stack_var_-136, align 8
  %5 = bitcast ptr %1 to ptr
  store i64 %4, ptr %5, align 8
  %6 = add i64 %2, 8
  %7 = inttoptr i64 %6 to ptr
  %8 = add i64 %2, 16
  %9 = inttoptr i64 %8 to ptr
  %10 = add i64 %2, 24
  %11 = inttoptr i64 %10 to ptr
  %12 = add i64 %2, 32
  %13 = inttoptr i64 %12 to ptr
  %14 = add i64 %2, 40
  %15 = inttoptr i64 %14 to ptr
  %16 = add i64 %2, 48
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %2, 56
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %2, 64
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %2, 72
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %2, 80
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %2, 88
  %27 = inttoptr i64 %26 to ptr
  %28 = add i64 %2, 96
  %29 = inttoptr i64 %28 to ptr
  %30 = add i64 %2, 99
  %31 = inttoptr i64 %30 to ptr
  store i8 0, ptr %31, align 1
  call void @printLine(ptr %1)
  call void @free(ptr %5)
  %32 = call i64 @__readfsqword(i64 40)
  %33 = icmp eq i64 %0, %32
  br i1 %33, label %dec_label_pc_1b3fc, label %dec_label_pc_1b3f7

dec_label_pc_1b3f7:                               ; preds = %dec_label_pc_1b2f5
  call void @__stack_chk_fail()
  br label %dec_label_pc_1b3fc

dec_label_pc_1b3fc:                               ; preds = %dec_label_pc_1b3f7, %dec_label_pc_1b2f5
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

