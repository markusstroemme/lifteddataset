@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_17707:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon1(ptr nonnull %stack_var_-56)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_17761, label %dec_label_pc_1775c

dec_label_pc_1775c:                               ; preds = %dec_label_pc_17707
  call void @__stack_chk_fail()
  br label %dec_label_pc_17761

dec_label_pc_17761:                               ; preds = %dec_label_pc_1775c, %dec_label_pc_17707
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_17834:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp slt i64 %3, 1
  br i1 %4, label %dec_label_pc_1786e, label %dec_label_pc_17857

dec_label_pc_17857:                               ; preds = %dec_label_pc_17834
  %5 = mul i64 %3, 2
  call void @printLongLongLine(i64 %5)
  br label %dec_label_pc_1786e

dec_label_pc_1786e:                               ; preds = %dec_label_pc_17857, %dec_label_pc_17834
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

