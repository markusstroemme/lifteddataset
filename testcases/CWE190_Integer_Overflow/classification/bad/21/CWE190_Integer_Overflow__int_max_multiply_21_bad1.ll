@global_var_8c32c = external constant [4 x i8]
@global_var_b82ac = external local_unnamed_addr global i32

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_4a8bc:
  %0 = load i32, ptr @global_var_b82ac, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp slt i32 %data, 1
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_4a8ed, label %dec_label_pc_4a8db

dec_label_pc_4a8db:                               ; preds = %dec_label_pc_4a8bc
  %3 = mul i32 %data, 2
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_4a8ed

dec_label_pc_4a8ed:                               ; preds = %dec_label_pc_4a8db, %dec_label_pc_4a8bc
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_4a8f0:
  store i32 1, ptr @global_var_b82ac, align 4
  call void @anon1(i32 2147483647)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

