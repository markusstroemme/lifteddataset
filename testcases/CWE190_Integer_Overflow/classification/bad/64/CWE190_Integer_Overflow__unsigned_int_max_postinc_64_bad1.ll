@global_var_8ca9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_6474b:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-20, align 4
  %1 = bitcast ptr %stack_var_-20 to ptr
  call void @anon1(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_64795, label %dec_label_pc_64790

dec_label_pc_64790:                               ; preds = %dec_label_pc_6474b
  call void @__stack_chk_fail()
  br label %dec_label_pc_64795

dec_label_pc_64795:                               ; preds = %dec_label_pc_64790, %dec_label_pc_6474b
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_6484e:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = add i32 %2, 1
  call void @printUnsignedLine(i32 %3)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8ca9e, i32 %unsignedNumber)
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

