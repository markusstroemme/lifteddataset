@global_var_34bf6 = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_d66a:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 8)
  %2 = bitcast ptr %1 to ptr
  %3 = insertvalue [5 x ptr] undef, ptr %2, 0
  store [5 x ptr] %3, ptr %dataArray_-64, align 8
  %4 = bitcast ptr %dataArray_-64 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_d6ac, label %dec_label_pc_d6a2

dec_label_pc_d6a2:                                ; preds = %dec_label_pc_d66a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d6ac:                                ; preds = %dec_label_pc_d66a
  %8 = inttoptr i64 %5 to ptr
  store i32 1, ptr %8, align 4
  %9 = load i64, ptr %4, align 8
  %10 = add i64 %9, 4
  %11 = inttoptr i64 %10 to ptr
  store i32 2, ptr %11, align 4
  %12 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_d6ea, label %dec_label_pc_d6e5

dec_label_pc_d6e5:                                ; preds = %dec_label_pc_d6ac
  call void @__stack_chk_fail()
  br label %dec_label_pc_d6ea

dec_label_pc_d6ea:                                ; preds = %dec_label_pc_d6e5, %dec_label_pc_d6ac
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_d783:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  call void @printStructLine(ptr %4)
  %5 = inttoptr i64 %3 to ptr
  call void @free(ptr %5)
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_2bb08:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_34bf6, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

