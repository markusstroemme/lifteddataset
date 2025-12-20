@global_var_8c83e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_645ed:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 2, ptr %stack_var_-20, align 4
  call void @anon0(ptr nonnull %stack_var_-20)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  br i1 %2, label %dec_label_pc_64637, label %dec_label_pc_64632

dec_label_pc_64632:                               ; preds = %dec_label_pc_645ed
  call void @__stack_chk_fail()
  br label %dec_label_pc_64637

dec_label_pc_64637:                               ; preds = %dec_label_pc_64632, %dec_label_pc_645ed
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_646d4:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = add i32 %2, 1
  call void @printUnsignedLine(i32 %3)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

