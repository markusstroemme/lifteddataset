@CWE476_NULL_Pointer_Dereference__long_22_badGlobal = external local_unnamed_addr global i32
@global_var_4a585 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1499a:
  store i32 1, ptr @CWE476_NULL_Pointer_Dereference__long_22_badGlobal, align 4
  call void @anon1(ptr null)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_14aa2:
  %0 = load i32, ptr @CWE476_NULL_Pointer_Dereference__long_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_14acb, label %dec_label_pc_14abc

dec_label_pc_14abc:                               ; preds = %dec_label_pc_14aa2
  %2 = ptrtoint ptr %data to i64
  call void @printLongLine(i64 %2)
  br label %dec_label_pc_14acb

dec_label_pc_14acb:                               ; preds = %dec_label_pc_14abc, %dec_label_pc_14aa2
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3cc1f:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

