@global_var_70d7c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_e43c:
  %stack_var_-26 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-26 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_e48c, label %dec_label_pc_e487

dec_label_pc_e487:                                ; preds = %dec_label_pc_e43c
  call void @__stack_chk_fail()
  br label %dec_label_pc_e48c

dec_label_pc_e48c:                                ; preds = %dec_label_pc_e487, %dec_label_pc_e43c
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_e577:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 4
  %2 = inttoptr i64 %1 to ptr
  %3 = load i16, ptr %2, align 2
  %4 = mul i16 %3, %3
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_54c32:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_70d7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

