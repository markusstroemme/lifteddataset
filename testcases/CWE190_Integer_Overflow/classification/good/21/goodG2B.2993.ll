@global_var_8c833 = external constant [6 x i8]
@global_var_bc124 = external local_unnamed_addr global i32

define void @anon0(i8 %data) local_unnamed_addr {
dec_label_pc_134c5:
  %0 = load i32, ptr @global_var_bc124, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_134fc, label %dec_label_pc_134e0

dec_label_pc_134e0:                               ; preds = %dec_label_pc_134c5
  %2 = add i8 %data, 1
  call void @printHexCharLine(i8 %2)
  br label %dec_label_pc_134fc

dec_label_pc_134fc:                               ; preds = %dec_label_pc_134e0, %dec_label_pc_134c5
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_134ff:
  store i32 1, ptr @global_var_bc124, align 4
  call void @anon0(i8 2)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

