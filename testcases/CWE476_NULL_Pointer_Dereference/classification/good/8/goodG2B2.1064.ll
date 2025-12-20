@global_var_47a70 = external local_unnamed_addr constant [5 x i8]
@global_var_4a58f = external constant [6 x i8]

define i32 @staticReturnsTrue.101() local_unnamed_addr {
dec_label_pc_7f5f:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_80e2:
  %0 = alloca ptr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = call i32 @staticReturnsTrue.101()
  %3 = call i32 @staticReturnsTrue.101()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_8126, label %dec_label_pc_8115

dec_label_pc_8115:                                ; preds = %dec_label_pc_80e2
  %5 = icmp eq i32 %2, 0
  %spec.select = select i1 %5, ptr %1, ptr @global_var_47a70
  %6 = load i8, ptr %spec.select, align 1
  call void @printHexCharLine(i8 %6)
  br label %dec_label_pc_8126

dec_label_pc_8126:                                ; preds = %dec_label_pc_8115, %dec_label_pc_80e2
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_3cca9:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a58f, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

