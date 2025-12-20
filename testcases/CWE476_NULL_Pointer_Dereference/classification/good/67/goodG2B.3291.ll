@global_var_4a585 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_edd2:
  %myStruct_-40 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 5, ptr %myStruct_-40, align 8
  %1 = ptrtoint ptr %myStruct_-40 to i64
  call void @anon0(i64 %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_ee26, label %dec_label_pc_ee21

dec_label_pc_ee21:                                ; preds = %dec_label_pc_edd2
  call void @__stack_chk_fail()
  br label %dec_label_pc_ee26

dec_label_pc_ee26:                                ; preds = %dec_label_pc_ee21, %dec_label_pc_edd2
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_ee9c:
  call void @printLongLongLine(i64 %myStruct)
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3cc4d:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

