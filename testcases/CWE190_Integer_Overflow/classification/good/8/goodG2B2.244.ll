@global_var_8c833 = external constant [6 x i8]

define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_90bd:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_932e:
  %0 = call i32 @staticReturnsTrue()
  %1 = call i32 @staticReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_937a, label %dec_label_pc_935e

dec_label_pc_935e:                                ; preds = %dec_label_pc_932e
  %3 = icmp eq i32 %0, 0
  %spec.select = select i1 %3, i8 33, i8 3
  call void @printHexCharLine(i8 %spec.select)
  br label %dec_label_pc_937a

dec_label_pc_937a:                                ; preds = %dec_label_pc_935e, %dec_label_pc_932e
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

