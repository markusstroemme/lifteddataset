@global_var_79ac4 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_cf1e:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 50)
  %2 = bitcast ptr %1 to ptr
  %3 = insertvalue [5 x ptr] undef, ptr %2, 0
  store [5 x ptr] %3, ptr %dataArray_-64, align 8
  %4 = bitcast ptr %dataArray_-64 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_cf60, label %dec_label_pc_cf56

dec_label_pc_cf56:                                ; preds = %dec_label_pc_cf1e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_cf60:                                ; preds = %dec_label_pc_cf1e
  %8 = inttoptr i64 %5 to ptr
  store i8 0, ptr %8, align 1
  %9 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_cf90, label %dec_label_pc_cf8b

dec_label_pc_cf8b:                                ; preds = %dec_label_pc_cf60
  call void @__stack_chk_fail()
  br label %dec_label_pc_cf90

dec_label_pc_cf90:                                ; preds = %dec_label_pc_cf8b, %dec_label_pc_cf60
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_d01b:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = inttoptr i64 %4 to ptr
  %7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %6, i32 100, ptr @global_var_79ac4, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %6)
  %8 = inttoptr i64 %4 to ptr
  call void @free(ptr %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_d0ba, label %dec_label_pc_d0b5

dec_label_pc_d0b5:                                ; preds = %dec_label_pc_d01b
  call void @__stack_chk_fail()
  br label %dec_label_pc_d0ba

dec_label_pc_d0ba:                                ; preds = %dec_label_pc_d0b5, %dec_label_pc_d01b
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_657a6:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_657c9, label %dec_label_pc_657bd

dec_label_pc_657bd:                               ; preds = %dec_label_pc_657a6
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_657c9

dec_label_pc_657c9:                               ; preds = %dec_label_pc_657bd, %dec_label_pc_657a6
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

