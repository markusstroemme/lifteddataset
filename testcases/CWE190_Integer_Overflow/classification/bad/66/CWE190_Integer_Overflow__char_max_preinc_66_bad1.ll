@global_var_8c833 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1086d:
  %stack_var_-21 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-21 to ptr
  call void @anon1(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_108b8, label %dec_label_pc_108b3

dec_label_pc_108b3:                               ; preds = %dec_label_pc_1086d
  call void @__stack_chk_fail()
  br label %dec_label_pc_108b8

dec_label_pc_108b8:                               ; preds = %dec_label_pc_108b3, %dec_label_pc_1086d
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_10973:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 2
  %2 = inttoptr i64 %1 to ptr
  %3 = load i8, ptr %2, align 1
  %4 = add i8 %3, 1
  call void @printHexCharLine(i8 %4)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

