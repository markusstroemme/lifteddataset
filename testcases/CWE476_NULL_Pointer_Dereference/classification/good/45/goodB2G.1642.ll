@CWE476_NULL_Pointer_Dereference__char_45_goodB2GData = external local_unnamed_addr global i64
@global_var_47c3f = external constant [13 x i8]
@global_var_4a58f = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_99a7:
  %0 = load i64, ptr @CWE476_NULL_Pointer_Dereference__char_45_goodB2GData, align 8
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %dec_label_pc_99d8, label %dec_label_pc_99c5

dec_label_pc_99c5:                                ; preds = %dec_label_pc_99a7
  %2 = inttoptr i64 %0 to ptr
  %3 = load i8, ptr %2, align 1
  call void @printHexCharLine(i8 %3)
  br label %dec_label_pc_99e7

dec_label_pc_99d8:                                ; preds = %dec_label_pc_99a7
  call void @printLine(ptr @global_var_47c3f)
  br label %dec_label_pc_99e7

dec_label_pc_99e7:                                ; preds = %dec_label_pc_99d8, %dec_label_pc_99c5
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_99ea:
  store i64 0, ptr @CWE476_NULL_Pointer_Dereference__char_45_goodB2GData, align 8
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

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_3cca9:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a58f, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

