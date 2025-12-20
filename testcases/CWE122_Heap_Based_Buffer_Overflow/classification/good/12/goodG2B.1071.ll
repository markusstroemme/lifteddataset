@global_var_bd318 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_b850:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = call ptr @malloc(i32 40)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %2, label %dec_label_pc_b8a0, label %dec_label_pc_b881

dec_label_pc_b881:                                ; preds = %dec_label_pc_b850
  br i1 %5, label %dec_label_pc_b8bf, label %dec_label_pc_b896

dec_label_pc_b896:                                ; preds = %dec_label_pc_b881
  call void @exit(i32 -1)
  unreachable

dec_label_pc_b8a0:                                ; preds = %dec_label_pc_b850
  br i1 %5, label %dec_label_pc_b8bf, label %dec_label_pc_b8b5

dec_label_pc_b8b5:                                ; preds = %dec_label_pc_b8a0
  call void @exit(i32 -1)
  unreachable

dec_label_pc_b8bf:                                ; preds = %dec_label_pc_b8a0, %dec_label_pc_b881
  store i64 0, ptr %stack_var_-56, align 8
  %6 = call ptr @memmove(ptr %3, ptr nonnull %stack_var_-56, i32 40)
  %7 = bitcast ptr %3 to ptr
  %8 = load i32, ptr %7, align 4
  call void @printIntLine(i32 %8)
  call void @free(ptr %3)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_b92d, label %dec_label_pc_b928

dec_label_pc_b928:                                ; preds = %dec_label_pc_b8bf
  call void @__stack_chk_fail()
  br label %dec_label_pc_b92d

dec_label_pc_b92d:                                ; preds = %dec_label_pc_b928, %dec_label_pc_b8bf
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a03ba:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

