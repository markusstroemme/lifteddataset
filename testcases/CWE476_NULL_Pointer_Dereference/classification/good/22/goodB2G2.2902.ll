@CWE476_NULL_Pointer_Dereference__int64_t_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_48100 = external constant [13 x i8]
@global_var_4a585 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_d72a:
  store i32 1, ptr @CWE476_NULL_Pointer_Dereference__int64_t_22_goodB2G2Global, align 4
  call void @anon0(ptr null)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_d859:
  %0 = load i32, ptr @CWE476_NULL_Pointer_Dereference__int64_t_22_goodB2G2Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_d89a, label %dec_label_pc_d873

dec_label_pc_d873:                                ; preds = %dec_label_pc_d859
  %2 = icmp eq ptr %data, null
  br i1 %2, label %dec_label_pc_d88b, label %dec_label_pc_d87a

dec_label_pc_d87a:                                ; preds = %dec_label_pc_d873
  %3 = ptrtoint ptr %data to i64
  call void @printLongLongLine(i64 %3)
  br label %dec_label_pc_d89a

dec_label_pc_d88b:                                ; preds = %dec_label_pc_d873
  call void @printLine(ptr @global_var_48100)
  br label %dec_label_pc_d89a

dec_label_pc_d89a:                                ; preds = %dec_label_pc_d88b, %dec_label_pc_d87a, %dec_label_pc_d859
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

