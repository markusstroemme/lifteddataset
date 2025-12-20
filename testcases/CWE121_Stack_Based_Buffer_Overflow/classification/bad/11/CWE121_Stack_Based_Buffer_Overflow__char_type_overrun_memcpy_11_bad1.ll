@global_var_bb7d0 = external constant [32 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_6ffcc:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_70043, label %dec_label_pc_6fff5

dec_label_pc_6fff5:                               ; preds = %dec_label_pc_6ffcc
  call void @printLine(ptr @global_var_bb7d0)
  %3 = call ptr @memcpy(ptr nonnull %stack_var_-56, ptr @global_var_bb7d0, i32 32)
  %4 = bitcast ptr %stack_var_-56 to ptr
  call void @printLine(ptr nonnull %4)
  call void @printLine(ptr @global_var_bb7d0)
  br label %dec_label_pc_70043

dec_label_pc_70043:                               ; preds = %dec_label_pc_6fff5, %dec_label_pc_6ffcc
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_70058, label %dec_label_pc_70053

dec_label_pc_70053:                               ; preds = %dec_label_pc_70043
  call void @__stack_chk_fail()
  br label %dec_label_pc_70058

dec_label_pc_70058:                               ; preds = %dec_label_pc_70053, %dec_label_pc_70043
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

