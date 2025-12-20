@CWE476_NULL_Pointer_Dereference__int64_t_45_goodB2GData = external local_unnamed_addr global ptr
@global_var_4814e = external constant [13 x i8]
@global_var_4a585 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_dfd9:
  %0 = load ptr, ptr @CWE476_NULL_Pointer_Dereference__int64_t_45_goodB2GData, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %dec_label_pc_e008, label %dec_label_pc_dff7

dec_label_pc_dff7:                                ; preds = %dec_label_pc_dfd9
  %2 = ptrtoint ptr %0 to i64
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_e017

dec_label_pc_e008:                                ; preds = %dec_label_pc_dfd9
  call void @printLine(ptr @global_var_4814e)
  br label %dec_label_pc_e017

dec_label_pc_e017:                                ; preds = %dec_label_pc_e008, %dec_label_pc_dff7
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_e01a:
  store i64 0, ptr @CWE476_NULL_Pointer_Dereference__int64_t_45_goodB2GData, align 8
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3cc4d:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

