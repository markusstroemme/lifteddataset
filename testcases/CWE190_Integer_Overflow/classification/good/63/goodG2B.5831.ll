@global_var_8c829 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1e733:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 2, ptr %stack_var_-24, align 8
  call void @anon0(ptr nonnull %stack_var_-24)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_1e77f, label %dec_label_pc_1e77a

dec_label_pc_1e77a:                               ; preds = %dec_label_pc_1e733
  call void @__stack_chk_fail()
  br label %dec_label_pc_1e77f

dec_label_pc_1e77f:                               ; preds = %dec_label_pc_1e77a, %dec_label_pc_1e733
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_1e82b:
  %0 = ptrtoint ptr %dataPtr to i64
  %1 = add i64 %0, 1
  call void @printLongLongLine(i64 %1)
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

