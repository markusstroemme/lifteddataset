@global_var_bd318 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_c2b6:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 40)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_c2df, label %dec_label_pc_c2cb

dec_label_pc_c2cb:                                ; preds = %dec_label_pc_c2b6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_c2df:                                ; preds = %dec_label_pc_c2b6
  store i64 0, ptr %stack_var_-56, align 8
  %4 = call ptr @memmove(ptr %1, ptr nonnull %stack_var_-56, i32 40)
  %5 = bitcast ptr %1 to ptr
  %6 = load i32, ptr %5, align 4
  call void @printIntLine(i32 %6)
  call void @free(ptr %1)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_c34d, label %dec_label_pc_c348

dec_label_pc_c348:                                ; preds = %dec_label_pc_c2df
  call void @__stack_chk_fail()
  br label %dec_label_pc_c34d

dec_label_pc_c34d:                                ; preds = %dec_label_pc_c348, %dec_label_pc_c2df
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

