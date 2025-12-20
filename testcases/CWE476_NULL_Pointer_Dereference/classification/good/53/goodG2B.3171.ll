@global_var_4a585 = external constant [5 x i8]

define void @anon3() local_unnamed_addr {
dec_label_pc_e347:
  %data_-32 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr inttoptr (i64 5 to ptr), ptr %data_-32, align 8
  %1 = bitcast ptr %data_-32 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_e393, label %dec_label_pc_e38e

dec_label_pc_e38e:                                ; preds = %dec_label_pc_e347
  call void @__stack_chk_fail()
  br label %dec_label_pc_e393

dec_label_pc_e393:                                ; preds = %dec_label_pc_e38e, %dec_label_pc_e347
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_e3f6:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_e453:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_e4b3:
  %0 = ptrtoint ptr %data to i64
  call void @printLongLongLine(i64 %0)
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

