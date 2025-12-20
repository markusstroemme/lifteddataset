@CWE476_NULL_Pointer_Dereference__long_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_486a3 = external constant [21 x i8]
@global_var_486b8 = external constant [13 x i8]
@global_var_4a585 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_149c7:
  store i32 0, ptr @CWE476_NULL_Pointer_Dereference__long_22_goodB2G1Global, align 4
  call void @anon0(ptr null)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_14ace:
  %0 = load i32, ptr @CWE476_NULL_Pointer_Dereference__long_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_14af9, label %dec_label_pc_14ae8

dec_label_pc_14ae8:                               ; preds = %dec_label_pc_14ace
  call void @printLine(ptr @global_var_486a3)
  br label %dec_label_pc_14b20

dec_label_pc_14af9:                               ; preds = %dec_label_pc_14ace
  %2 = icmp eq ptr %data, null
  br i1 %2, label %dec_label_pc_14b11, label %dec_label_pc_14b00

dec_label_pc_14b00:                               ; preds = %dec_label_pc_14af9
  %3 = ptrtoint ptr %data to i64
  call void @printLongLine(i64 %3)
  br label %dec_label_pc_14b20

dec_label_pc_14b11:                               ; preds = %dec_label_pc_14af9
  call void @printLine(ptr @global_var_486b8)
  br label %dec_label_pc_14b20

dec_label_pc_14b20:                               ; preds = %dec_label_pc_14b11, %dec_label_pc_14b00, %dec_label_pc_14ae8
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

