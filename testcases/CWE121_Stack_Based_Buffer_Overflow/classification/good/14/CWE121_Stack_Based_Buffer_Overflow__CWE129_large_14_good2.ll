@global_var_b7118 = external constant [36 x i8]
@global_var_ef084 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2c370:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef084, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_2c426, label %dec_label_pc_2c415

dec_label_pc_2c415:                               ; preds = %dec_label_pc_2c370
  call void @printLine(ptr @global_var_b7118)
  br label %dec_label_pc_2c426

dec_label_pc_2c426:                               ; preds = %dec_label_pc_2c415, %dec_label_pc_2c370
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_2c43b, label %dec_label_pc_2c436

dec_label_pc_2c436:                               ; preds = %dec_label_pc_2c426
  call void @__stack_chk_fail()
  br label %dec_label_pc_2c43b

dec_label_pc_2c43b:                               ; preds = %dec_label_pc_2c436, %dec_label_pc_2c426
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

