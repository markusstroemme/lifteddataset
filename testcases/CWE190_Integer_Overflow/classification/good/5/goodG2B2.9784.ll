@global_var_8c81c = external constant [4 x i8]
@global_var_bc050 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3625d:
  %0 = load i32, ptr @global_var_bc050, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_3629f, label %dec_label_pc_3628b

dec_label_pc_3628b:                               ; preds = %dec_label_pc_3625d
  call void @printIntLine(i32 3)
  br label %dec_label_pc_3629f

dec_label_pc_3629f:                               ; preds = %dec_label_pc_3628b, %dec_label_pc_3625d
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

