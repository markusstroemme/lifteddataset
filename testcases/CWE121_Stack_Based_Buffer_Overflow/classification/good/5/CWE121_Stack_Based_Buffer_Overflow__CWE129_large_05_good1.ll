@global_var_b6db0 = external constant [21 x i8]
@global_var_b6dc8 = external constant [36 x i8]
@global_var_ef150 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_29c61:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef150, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_29d15, label %dec_label_pc_29c9e

dec_label_pc_29c9e:                               ; preds = %dec_label_pc_29c61
  call void @printLine(ptr @global_var_b6db0)
  br label %dec_label_pc_29d26

dec_label_pc_29d15:                               ; preds = %dec_label_pc_29c61
  call void @printLine(ptr @global_var_b6dc8)
  br label %dec_label_pc_29d26

dec_label_pc_29d26:                               ; preds = %dec_label_pc_29d15, %dec_label_pc_29c9e
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_29d3b, label %dec_label_pc_29d36

dec_label_pc_29d36:                               ; preds = %dec_label_pc_29d26
  call void @__stack_chk_fail()
  br label %dec_label_pc_29d3b

dec_label_pc_29d3b:                               ; preds = %dec_label_pc_29d36, %dec_label_pc_29d26
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

