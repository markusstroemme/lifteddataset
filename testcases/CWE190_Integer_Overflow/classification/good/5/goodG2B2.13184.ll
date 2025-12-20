@staticTrue = external local_unnamed_addr global i32
@global_var_76ce9 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_376d0:
  %0 = load i32, ptr @staticTrue, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_3771e, label %dec_label_pc_37707

dec_label_pc_37707:                               ; preds = %dec_label_pc_376d0
  call void @printLongLongLine(i64 4)
  br label %dec_label_pc_3771e

dec_label_pc_3771e:                               ; preds = %dec_label_pc_37707, %dec_label_pc_376d0
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

