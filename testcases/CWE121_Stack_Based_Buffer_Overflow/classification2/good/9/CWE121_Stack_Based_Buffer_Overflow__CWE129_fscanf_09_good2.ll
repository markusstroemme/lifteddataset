@global_var_b62e8 = external constant [36 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_b62a8 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2272c:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_b62a8)
  call void @printLine(ptr @global_var_b62e8)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_22813, label %dec_label_pc_2280e

dec_label_pc_2280e:                               ; preds = %dec_label_pc_2272c
  call void @__stack_chk_fail()
  br label %dec_label_pc_22813

dec_label_pc_22813:                               ; preds = %dec_label_pc_2280e, %dec_label_pc_2272c
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

