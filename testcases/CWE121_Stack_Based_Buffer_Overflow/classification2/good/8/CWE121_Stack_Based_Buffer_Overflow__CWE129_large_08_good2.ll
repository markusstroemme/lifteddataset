@global_var_b6ef0 = external constant [36 x i8]

define i32 @staticReturnsTrue.465() local_unnamed_addr {
dec_label_pc_2a844:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_2aa11:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.465()
  %2 = call i32 @staticReturnsTrue.465()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_2aacd, label %dec_label_pc_2aabc

dec_label_pc_2aabc:                               ; preds = %dec_label_pc_2aa11
  call void @printLine(ptr @global_var_b6ef0)
  br label %dec_label_pc_2aacd

dec_label_pc_2aacd:                               ; preds = %dec_label_pc_2aabc, %dec_label_pc_2aa11
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_2aae2, label %dec_label_pc_2aadd

dec_label_pc_2aadd:                               ; preds = %dec_label_pc_2aacd
  call void @__stack_chk_fail()
  br label %dec_label_pc_2aae2

dec_label_pc_2aae2:                               ; preds = %dec_label_pc_2aadd, %dec_label_pc_2aacd
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

