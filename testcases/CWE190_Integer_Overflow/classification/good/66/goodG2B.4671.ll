@global_var_8c829 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1a90f:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-56)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_1a963, label %dec_label_pc_1a95e

dec_label_pc_1a95e:                               ; preds = %dec_label_pc_1a90f
  call void @__stack_chk_fail()
  br label %dec_label_pc_1a963

dec_label_pc_1a963:                               ; preds = %dec_label_pc_1a95e, %dec_label_pc_1a90f
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_1aa2c:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, 1
  call void @printLongLongLine(i64 %4)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

