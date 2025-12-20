@global_var_b6528 = external constant [36 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_b6500 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_24255:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_b6500)
  call void @printLine(ptr @global_var_b6528)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_24328, label %dec_label_pc_24323

dec_label_pc_24323:                               ; preds = %dec_label_pc_24255
  call void @__stack_chk_fail()
  br label %dec_label_pc_24328

dec_label_pc_24328:                               ; preds = %dec_label_pc_24323, %dec_label_pc_24255
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

