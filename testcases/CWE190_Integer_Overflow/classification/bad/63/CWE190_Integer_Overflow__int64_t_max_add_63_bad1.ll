@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_12caf:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 9223372036854775807, ptr %stack_var_-24, align 8
  call void @anon1(ptr nonnull %stack_var_-24)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_12d01, label %dec_label_pc_12cfc

dec_label_pc_12cfc:                               ; preds = %dec_label_pc_12caf
  call void @__stack_chk_fail()
  br label %dec_label_pc_12d01

dec_label_pc_12d01:                               ; preds = %dec_label_pc_12cfc, %dec_label_pc_12caf
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_12dc4:
  %0 = ptrtoint ptr %dataPtr to i64
  %1 = add i64 %0, 1
  call void @printLongLongLine(i64 %1)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

