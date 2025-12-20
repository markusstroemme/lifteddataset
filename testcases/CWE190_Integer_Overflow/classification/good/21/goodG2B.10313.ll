@global_var_8c81c = external constant [4 x i8]
@global_var_bc2d0 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_383f3:
  %0 = load i32, ptr @global_var_bc2d0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_38420, label %dec_label_pc_3840c

dec_label_pc_3840c:                               ; preds = %dec_label_pc_383f3
  %2 = add i32 %data, 1
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_38420

dec_label_pc_38420:                               ; preds = %dec_label_pc_3840c, %dec_label_pc_383f3
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_38423:
  store i32 1, ptr @global_var_bc2d0, align 4
  call void @anon0(i32 2)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

