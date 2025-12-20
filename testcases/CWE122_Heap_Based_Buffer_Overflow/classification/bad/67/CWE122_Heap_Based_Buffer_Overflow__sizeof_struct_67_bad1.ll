@global_var_34bf6 = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_d7f1:
  %stack_var_-16 = alloca ptr, align 8
  %0 = call ptr @malloc(i32 8)
  %1 = bitcast ptr %0 to ptr
  store ptr %1, ptr %stack_var_-16, align 8
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_d824, label %dec_label_pc_d81a

dec_label_pc_d81a:                                ; preds = %dec_label_pc_d7f1
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d824:                                ; preds = %dec_label_pc_d7f1
  store i32 1, ptr %1, align 4
  %4 = ptrtoint ptr %0 to i64
  %5 = add i64 %4, 4
  %6 = inttoptr i64 %5 to ptr
  store i32 2, ptr %6, align 4
  %7 = load ptr, ptr %stack_var_-16, align 8
  %8 = ptrtoint ptr %7 to i64
  call void @anon1(i64 %8)
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_d8c4:
  %0 = inttoptr i64 %myStruct to ptr
  call void @printStructLine(ptr %0)
  %1 = inttoptr i64 %myStruct to ptr
  call void @free(ptr %1)
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

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

