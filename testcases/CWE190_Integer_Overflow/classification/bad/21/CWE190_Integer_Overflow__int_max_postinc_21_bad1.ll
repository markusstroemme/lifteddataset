@global_var_8ca7c = external constant [4 x i8]
@global_var_bc33c = external local_unnamed_addr global i32

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_46c11:
  %0 = load i32, ptr @global_var_bc33c, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_46c3e, label %dec_label_pc_46c2a

dec_label_pc_46c2a:                               ; preds = %dec_label_pc_46c11
  %2 = add i32 %data, 1
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_46c3e

dec_label_pc_46c3e:                               ; preds = %dec_label_pc_46c2a, %dec_label_pc_46c11
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_46c41:
  store i32 1, ptr @global_var_bc33c, align 4
  call void @anon1(i32 2147483647)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

