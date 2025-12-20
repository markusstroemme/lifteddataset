@global_var_4a578 = external constant [4 x i8]

define i32 @staticReturnsTrue.359() local_unnamed_addr {
dec_label_pc_fbd0:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_fbee:
  %0 = alloca ptr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = call i32 @staticReturnsTrue.359()
  %3 = call i32 @staticReturnsTrue.359()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_fc2b, label %dec_label_pc_fc1e

dec_label_pc_fc1e:                                ; preds = %dec_label_pc_fbee
  %5 = load i32, ptr %1, align 4
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_fc2b

dec_label_pc_fc2b:                                ; preds = %dec_label_pc_fc1e, %dec_label_pc_fbee
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

