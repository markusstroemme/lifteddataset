@global_var_34bd9 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_a382:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 8)
  %2 = insertvalue [5 x ptr] undef, ptr %1, 0
  store [5 x ptr] %2, ptr %dataArray_-64, align 8
  %3 = bitcast ptr %dataArray_-64 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = icmp eq i64 %4, 0
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_a3c4, label %dec_label_pc_a3ba

dec_label_pc_a3ba:                                ; preds = %dec_label_pc_a382
  call void @exit(i32 -1)
  unreachable

dec_label_pc_a3c4:                                ; preds = %dec_label_pc_a382
  %7 = inttoptr i64 %4 to ptr
  store i64 2147483643, ptr %7, align 8
  %8 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_a3f8, label %dec_label_pc_a3f3

dec_label_pc_a3f3:                                ; preds = %dec_label_pc_a3c4
  call void @__stack_chk_fail()
  br label %dec_label_pc_a3f8

dec_label_pc_a3f8:                                ; preds = %dec_label_pc_a3f3, %dec_label_pc_a3c4
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_a487:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  call void @printLongLongLine(i64 %5)
  call void @free(ptr %4)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_2b997:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_34bd9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

