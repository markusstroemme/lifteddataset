@global_var_4a585 = external constant [5 x i8]
@global_var_6d17c = external local_unnamed_addr global i32

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_147a1:
  %0 = load i32, ptr @global_var_6d17c, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_147ca, label %dec_label_pc_147bb

dec_label_pc_147bb:                               ; preds = %dec_label_pc_147a1
  %2 = ptrtoint ptr %data to i64
  call void @printLongLine(i64 %2)
  br label %dec_label_pc_147ca

dec_label_pc_147ca:                               ; preds = %dec_label_pc_147bb, %dec_label_pc_147a1
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_147cd:
  store i32 1, ptr @global_var_6d17c, align 4
  call void @anon1(ptr null)
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3cc1f:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

