@global_var_b6ff8 = external constant [21 x i8]
@global_var_b7010 = external constant [36 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2b5f1:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = call i32 @globalReturnsFalse()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_2b6ad, label %dec_label_pc_2b636

dec_label_pc_2b636:                               ; preds = %dec_label_pc_2b5f1
  call void @printLine(ptr @global_var_b6ff8)
  br label %dec_label_pc_2b6be

dec_label_pc_2b6ad:                               ; preds = %dec_label_pc_2b5f1
  call void @printLine(ptr @global_var_b7010)
  br label %dec_label_pc_2b6be

dec_label_pc_2b6be:                               ; preds = %dec_label_pc_2b6ad, %dec_label_pc_2b636
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_2b6d3, label %dec_label_pc_2b6ce

dec_label_pc_2b6ce:                               ; preds = %dec_label_pc_2b6be
  call void @__stack_chk_fail()
  br label %dec_label_pc_2b6d3

dec_label_pc_2b6d3:                               ; preds = %dec_label_pc_2b6ce, %dec_label_pc_2b6be
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

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_a0bda:
  ret i32 0
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

