@global_var_b7010 = external constant [36 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2b6d5:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = call i32 @globalReturnsTrue()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_2b791, label %dec_label_pc_2b780

dec_label_pc_2b780:                               ; preds = %dec_label_pc_2b6d5
  call void @printLine(ptr @global_var_b7010)
  br label %dec_label_pc_2b791

dec_label_pc_2b791:                               ; preds = %dec_label_pc_2b780, %dec_label_pc_2b6d5
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_2b7a6, label %dec_label_pc_2b7a1

dec_label_pc_2b7a1:                               ; preds = %dec_label_pc_2b791
  call void @__stack_chk_fail()
  br label %dec_label_pc_2b7a6

dec_label_pc_2b7a6:                               ; preds = %dec_label_pc_2b7a1, %dec_label_pc_2b791
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_a0bcb:
  ret i32 1
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

