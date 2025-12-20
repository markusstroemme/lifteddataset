@global_var_8ca9e = external constant [4 x i8]
@global_var_bc094 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_61e74:
  %0 = load i32, ptr @global_var_bc094, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_61eb8, label %dec_label_pc_61ea4

dec_label_pc_61ea4:                               ; preds = %dec_label_pc_61e74
  %3 = icmp ne i32 %0, 5
  %4 = zext i1 %3 to i32
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_61eb8

dec_label_pc_61eb8:                               ; preds = %dec_label_pc_61ea4, %dec_label_pc_61e74
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8ca9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

