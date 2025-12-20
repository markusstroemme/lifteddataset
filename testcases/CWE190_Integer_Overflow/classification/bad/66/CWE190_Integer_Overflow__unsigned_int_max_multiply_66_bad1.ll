@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_24940:
  %stack_var_-40 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-40 to ptr
  call void @anon1(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_24990, label %dec_label_pc_2498b

dec_label_pc_2498b:                               ; preds = %dec_label_pc_24940
  call void @__stack_chk_fail()
  br label %dec_label_pc_24990

dec_label_pc_24990:                               ; preds = %dec_label_pc_2498b, %dec_label_pc_24940
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_24a55:
  %0 = ptrtoint ptr %dataArray to i64
  %sext = mul i64 %0, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = add nsw i64 %1, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_24a87, label %dec_label_pc_24a75

dec_label_pc_24a75:                               ; preds = %dec_label_pc_24a55
  %6 = mul i32 %4, 2
  call void @printUnsignedLine(i32 %6)
  br label %dec_label_pc_24a87

dec_label_pc_24a87:                               ; preds = %dec_label_pc_24a75, %dec_label_pc_24a55
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

