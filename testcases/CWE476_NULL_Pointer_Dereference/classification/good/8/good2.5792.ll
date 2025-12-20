@global_var_4a578 = external constant [4 x i8]

define i32 @staticReturnsTrue.576() local_unnamed_addr {
dec_label_pc_16b6b:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_16c63:
  %0 = call i32 @staticReturnsTrue.576()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_16cc1, label %dec_label_pc_16c7d

dec_label_pc_16c7d:                               ; preds = %dec_label_pc_16c63
  %2 = call ptr @malloc(i32 4)
  %3 = bitcast ptr %2 to ptr
  store i32 5, ptr %3, align 4
  call void @printIntLine(i32 5)
  store i32 10, ptr %3, align 4
  call void @printIntLine(i32 10)
  br label %dec_label_pc_16cc1

dec_label_pc_16cc1:                               ; preds = %dec_label_pc_16c7d, %dec_label_pc_16c63
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

