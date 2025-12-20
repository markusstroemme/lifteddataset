@global_var_34bf6 = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_b6aa:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call ptr @malloc(i32 8)
  %3 = bitcast ptr %2 to ptr
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  br i1 %1, label %dec_label_pc_b702, label %dec_label_pc_b6cc

dec_label_pc_b6cc:                                ; preds = %dec_label_pc_b6aa
  br i1 %5, label %dec_label_pc_b6eb, label %dec_label_pc_b6e1

dec_label_pc_b6e1:                                ; preds = %dec_label_pc_b6cc
  call void @exit(i32 -1)
  unreachable

dec_label_pc_b6eb:                                ; preds = %dec_label_pc_b6cc
  store i32 1, ptr %3, align 4
  %6 = ptrtoint ptr %2 to i64
  %7 = add i64 %6, 4
  %8 = inttoptr i64 %7 to ptr
  store i32 2, ptr %8, align 4
  br label %dec_label_pc_b736

dec_label_pc_b702:                                ; preds = %dec_label_pc_b6aa
  br i1 %5, label %dec_label_pc_b721, label %dec_label_pc_b717

dec_label_pc_b717:                                ; preds = %dec_label_pc_b702
  call void @exit(i32 -1)
  unreachable

dec_label_pc_b721:                                ; preds = %dec_label_pc_b702
  store i32 1, ptr %3, align 4
  %9 = ptrtoint ptr %2 to i64
  %10 = add i64 %9, 4
  %11 = inttoptr i64 %10 to ptr
  store i32 2, ptr %11, align 4
  br label %dec_label_pc_b736

dec_label_pc_b736:                                ; preds = %dec_label_pc_b721, %dec_label_pc_b6eb
  call void @printStructLine(ptr nonnull %3)
  call void @free(ptr nonnull %2)
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_2bda7:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

