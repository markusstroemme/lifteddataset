@global_var_b6408 = external constant [36 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_b63e0 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2348e:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = load ptr, ptr @global_var_ef090, align 8
  %3 = call i32 (ptr, ptr, ...) @fscanf(ptr %2, ptr @global_var_b63e0)
  %4 = call i32 @globalReturnsTrueOrFalse()
  call void @printLine(ptr @global_var_b6408)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_2361e, label %dec_label_pc_23619

dec_label_pc_23619:                               ; preds = %dec_label_pc_2348e
  call void @__stack_chk_fail()
  br label %dec_label_pc_2361e

dec_label_pc_2361e:                               ; preds = %dec_label_pc_23619, %dec_label_pc_2348e
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a0be9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

