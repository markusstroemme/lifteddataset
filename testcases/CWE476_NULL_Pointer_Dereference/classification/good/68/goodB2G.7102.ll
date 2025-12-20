@CWE476_NULL_Pointer_Dereference__struct_68_goodB2GData = external local_unnamed_addr global ptr
@global_var_48b48 = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1b1ce:
  store i64 0, ptr @CWE476_NULL_Pointer_Dereference__struct_68_goodB2GData, align 8
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1b267:
  %0 = load ptr, ptr @CWE476_NULL_Pointer_Dereference__struct_68_goodB2GData, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %dec_label_pc_1b294, label %dec_label_pc_1b285

dec_label_pc_1b285:                               ; preds = %dec_label_pc_1b267
  %2 = ptrtoint ptr %0 to i64
  %3 = trunc i64 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_1b2a3

dec_label_pc_1b294:                               ; preds = %dec_label_pc_1b267
  call void @printLine(ptr @global_var_48b48)
  br label %dec_label_pc_1b2a3

dec_label_pc_1b2a3:                               ; preds = %dec_label_pc_1b294, %dec_label_pc_1b285
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

