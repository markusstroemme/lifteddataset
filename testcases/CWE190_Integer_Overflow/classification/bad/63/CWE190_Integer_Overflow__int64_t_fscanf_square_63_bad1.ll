@global_var_8a29a = external constant [4 x i8]
@global_var_95449 = external constant [5 x i8]
@global_var_c3080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_e8b7:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_c3080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_8a29a, ptr nonnull %stack_var_-24)
  call void @anon1(ptr nonnull %stack_var_-24)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_e91d, label %dec_label_pc_e918

dec_label_pc_e918:                                ; preds = %dec_label_pc_e8b7
  call void @__stack_chk_fail()
  br label %dec_label_pc_e91d

dec_label_pc_e91d:                                ; preds = %dec_label_pc_e918, %dec_label_pc_e8b7
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_e9f4:
  %0 = ptrtoint ptr %dataPtr to i64
  %1 = mul i64 %0, %0
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

