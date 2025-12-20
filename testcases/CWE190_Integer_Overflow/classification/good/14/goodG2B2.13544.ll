@global_var_8c32c = external constant [4 x i8]
@global_var_b8074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4e087:
  %0 = load i32, ptr @global_var_b8074, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_4e0ca, label %dec_label_pc_4e0b7

dec_label_pc_4e0b7:                               ; preds = %dec_label_pc_4e087
  call void @printIntLine(i32 4)
  br label %dec_label_pc_4e0ca

dec_label_pc_4e0ca:                               ; preds = %dec_label_pc_4e0b7, %dec_label_pc_4e087
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

