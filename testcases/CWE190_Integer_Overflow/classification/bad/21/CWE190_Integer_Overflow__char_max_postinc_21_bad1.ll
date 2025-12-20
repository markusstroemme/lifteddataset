@global_var_8ca93 = external constant [6 x i8]
@global_var_bc0ec = external local_unnamed_addr global i32

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_eed7:
  %0 = load i32, ptr @global_var_bc0ec, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_ef0e, label %dec_label_pc_eef2

dec_label_pc_eef2:                                ; preds = %dec_label_pc_eed7
  %2 = add i8 %data, 1
  call void @printHexCharLine(i8 %2)
  br label %dec_label_pc_ef0e

dec_label_pc_ef0e:                                ; preds = %dec_label_pc_eef2, %dec_label_pc_eed7
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_ef11:
  store i32 1, ptr @global_var_bc0ec, align 4
  call void @anon1(i8 127)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca93, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

