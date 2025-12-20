@global_var_8c83e = external constant [4 x i8]
@global_var_bc0a4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5e914:
  %0 = load i32, ptr @global_var_bc0a4, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_5e958, label %dec_label_pc_5e944

dec_label_pc_5e944:                               ; preds = %dec_label_pc_5e914
  call void @printUnsignedLine(i32 3)
  br label %dec_label_pc_5e958

dec_label_pc_5e958:                               ; preds = %dec_label_pc_5e944, %dec_label_pc_5e914
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

