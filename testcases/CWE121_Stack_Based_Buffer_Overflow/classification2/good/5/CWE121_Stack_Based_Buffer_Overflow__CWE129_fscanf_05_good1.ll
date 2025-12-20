@global_var_b6130 = external constant [21 x i8]
@global_var_b6148 = external constant [36 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_ef020 = external local_unnamed_addr global i32
@global_var_ef114 = external local_unnamed_addr global i32
@global_var_b6108 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_213b2:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef020, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_21400, label %dec_label_pc_213de

dec_label_pc_213de:                               ; preds = %dec_label_pc_213b2
  %3 = load ptr, ptr @global_var_ef090, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_b6108)
  br label %dec_label_pc_21400

dec_label_pc_21400:                               ; preds = %dec_label_pc_213de, %dec_label_pc_213b2
  %5 = load i32, ptr @global_var_ef114, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_21484, label %dec_label_pc_2140a

dec_label_pc_2140a:                               ; preds = %dec_label_pc_21400
  call void @printLine(ptr @global_var_b6130)
  br label %dec_label_pc_21495

dec_label_pc_21484:                               ; preds = %dec_label_pc_21400
  call void @printLine(ptr @global_var_b6148)
  br label %dec_label_pc_21495

dec_label_pc_21495:                               ; preds = %dec_label_pc_21484, %dec_label_pc_2140a
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_214aa, label %dec_label_pc_214a5

dec_label_pc_214a5:                               ; preds = %dec_label_pc_21495
  call void @__stack_chk_fail()
  br label %dec_label_pc_214aa

dec_label_pc_214aa:                               ; preds = %dec_label_pc_214a5, %dec_label_pc_21495
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

