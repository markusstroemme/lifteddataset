@global_var_b6fb0 = external constant [36 x i8]
@global_var_ef080 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2b291:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef080, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_2b345, label %dec_label_pc_2b334

dec_label_pc_2b334:                               ; preds = %dec_label_pc_2b291
  call void @printLine(ptr @global_var_b6fb0)
  br label %dec_label_pc_2b345

dec_label_pc_2b345:                               ; preds = %dec_label_pc_2b334, %dec_label_pc_2b291
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_2b35a, label %dec_label_pc_2b355

dec_label_pc_2b355:                               ; preds = %dec_label_pc_2b345
  call void @__stack_chk_fail()
  br label %dec_label_pc_2b35a

dec_label_pc_2b35a:                               ; preds = %dec_label_pc_2b355, %dec_label_pc_2b345
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

