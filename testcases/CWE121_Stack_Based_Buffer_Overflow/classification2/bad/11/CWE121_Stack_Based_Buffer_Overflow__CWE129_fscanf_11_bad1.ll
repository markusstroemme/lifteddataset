@global_var_b6380 = external constant [32 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_b6378 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_22e6b:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_22ebd, label %dec_label_pc_22e9b

dec_label_pc_22e9b:                               ; preds = %dec_label_pc_22e6b
  %3 = load ptr, ptr @global_var_ef090, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_b6378)
  br label %dec_label_pc_22ebd

dec_label_pc_22ebd:                               ; preds = %dec_label_pc_22e9b, %dec_label_pc_22e6b
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_22f3b, label %dec_label_pc_22f2c

dec_label_pc_22f2c:                               ; preds = %dec_label_pc_22ebd
  call void @printLine(ptr @global_var_b6380)
  br label %dec_label_pc_22f3b

dec_label_pc_22f3b:                               ; preds = %dec_label_pc_22f2c, %dec_label_pc_22ebd
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_22f50, label %dec_label_pc_22f4b

dec_label_pc_22f4b:                               ; preds = %dec_label_pc_22f3b
  call void @__stack_chk_fail()
  br label %dec_label_pc_22f50

dec_label_pc_22f50:                               ; preds = %dec_label_pc_22f4b, %dec_label_pc_22f3b
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

