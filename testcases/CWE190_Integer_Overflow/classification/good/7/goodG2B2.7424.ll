@global_var_8c81c = external constant [4 x i8]
@global_var_bc044 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2858b:
  %0 = load i32, ptr @global_var_bc044, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_285cf, label %dec_label_pc_285bb

dec_label_pc_285bb:                               ; preds = %dec_label_pc_2858b
  call void @printIntLine(i32 3)
  br label %dec_label_pc_285cf

dec_label_pc_285cf:                               ; preds = %dec_label_pc_285bb, %dec_label_pc_2858b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

