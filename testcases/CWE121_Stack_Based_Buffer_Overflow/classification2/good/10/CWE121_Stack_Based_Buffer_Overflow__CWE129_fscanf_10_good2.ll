@global_var_b6350 = external constant [36 x i8]
@global_var_ef080 = external local_unnamed_addr global i32
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_b6310 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_22bb8:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef080, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_22c8a, label %dec_label_pc_22c06

dec_label_pc_22c06:                               ; preds = %dec_label_pc_22bb8
  %3 = load ptr, ptr @global_var_ef090, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_b6310)
  %.pr = load i32, ptr @global_var_ef080, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_22c8a, label %dec_label_pc_22c79

dec_label_pc_22c79:                               ; preds = %dec_label_pc_22c06
  call void @printLine(ptr @global_var_b6350)
  br label %dec_label_pc_22c8a

dec_label_pc_22c8a:                               ; preds = %dec_label_pc_22bb8, %dec_label_pc_22c79, %dec_label_pc_22c06
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_22c9f, label %dec_label_pc_22c9a

dec_label_pc_22c9a:                               ; preds = %dec_label_pc_22c8a
  call void @__stack_chk_fail()
  br label %dec_label_pc_22c9f

dec_label_pc_22c9f:                               ; preds = %dec_label_pc_22c9a, %dec_label_pc_22c8a
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

