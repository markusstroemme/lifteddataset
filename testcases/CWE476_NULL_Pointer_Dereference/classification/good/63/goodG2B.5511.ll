@global_var_4a585 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_15a67:
  %tmpData_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 5, ptr %stack_var_-24, align 8
  %1 = ptrtoint ptr %stack_var_-24 to i64
  store i64 %1, ptr %tmpData_-32, align 8
  %2 = bitcast ptr %tmpData_-32 to ptr
  call void @anon0(ptr nonnull %2)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_15ab3, label %dec_label_pc_15aae

dec_label_pc_15aae:                               ; preds = %dec_label_pc_15a67
  call void @__stack_chk_fail()
  br label %dec_label_pc_15ab3

dec_label_pc_15ab3:                               ; preds = %dec_label_pc_15aae, %dec_label_pc_15a67
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_15b47:
  %0 = ptrtoint ptr %dataPtr to i64
  call void @printLongLine(i64 %0)
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3cc1f:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

