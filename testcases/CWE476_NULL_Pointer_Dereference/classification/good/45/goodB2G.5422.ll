@CWE476_NULL_Pointer_Dereference__long_45_goodB2GData = external local_unnamed_addr global ptr
@global_var_48706 = external constant [13 x i8]
@global_var_4a585 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_152a3:
  %0 = load ptr, ptr @CWE476_NULL_Pointer_Dereference__long_45_goodB2GData, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %dec_label_pc_152d2, label %dec_label_pc_152c1

dec_label_pc_152c1:                               ; preds = %dec_label_pc_152a3
  %2 = ptrtoint ptr %0 to i64
  call void @printLongLine(i64 %2)
  br label %dec_label_pc_152e1

dec_label_pc_152d2:                               ; preds = %dec_label_pc_152a3
  call void @printLine(ptr @global_var_48706)
  br label %dec_label_pc_152e1

dec_label_pc_152e1:                               ; preds = %dec_label_pc_152d2, %dec_label_pc_152c1
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_152e4:
  store i64 0, ptr @CWE476_NULL_Pointer_Dereference__long_45_goodB2GData, align 8
  call void @anon0()
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3cc1f:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

