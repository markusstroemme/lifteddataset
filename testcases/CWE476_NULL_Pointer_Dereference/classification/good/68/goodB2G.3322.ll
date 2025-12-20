@CWE476_NULL_Pointer_Dereference__int64_t_68_goodB2GData = external local_unnamed_addr global ptr
@global_var_481d0 = external constant [13 x i8]
@global_var_4a585 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_ef8b:
  store i64 0, ptr @CWE476_NULL_Pointer_Dereference__int64_t_68_goodB2GData, align 8
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_f028:
  %0 = load ptr, ptr @CWE476_NULL_Pointer_Dereference__int64_t_68_goodB2GData, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %dec_label_pc_f057, label %dec_label_pc_f046

dec_label_pc_f046:                                ; preds = %dec_label_pc_f028
  %2 = ptrtoint ptr %0 to i64
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_f066

dec_label_pc_f057:                                ; preds = %dec_label_pc_f028
  call void @printLine(ptr @global_var_481d0)
  br label %dec_label_pc_f066

dec_label_pc_f066:                                ; preds = %dec_label_pc_f057, %dec_label_pc_f046
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

