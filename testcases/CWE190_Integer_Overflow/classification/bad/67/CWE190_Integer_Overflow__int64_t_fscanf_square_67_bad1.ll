@global_var_8a396 = external constant [4 x i8]
@global_var_95449 = external constant [5 x i8]
@global_var_c3080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_f0fa:
  %myStruct_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %myStruct_-32, align 8
  %1 = load ptr, ptr @global_var_c3080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_8a396, ptr nonnull %myStruct_-32)
  %3 = load i64, ptr %myStruct_-32, align 8
  call void @anon1(i64 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_f168, label %dec_label_pc_f163

dec_label_pc_f163:                                ; preds = %dec_label_pc_f0fa
  call void @__stack_chk_fail()
  br label %dec_label_pc_f168

dec_label_pc_f168:                                ; preds = %dec_label_pc_f163, %dec_label_pc_f0fa
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_f22c:
  %0 = mul i64 %myStruct, %myStruct
  call void @printLongLongLine(i64 %0)
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

