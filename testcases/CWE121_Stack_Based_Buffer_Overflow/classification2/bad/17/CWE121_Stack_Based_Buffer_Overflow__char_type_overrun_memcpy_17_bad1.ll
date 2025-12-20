@global_var_bb8d8 = external constant [32 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_70a5a:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-56 to ptr
  call void @printLine(ptr @global_var_bb8d8)
  %2 = call ptr @memcpy(ptr nonnull %stack_var_-56, ptr @global_var_bb8d8, i32 32)
  call void @printLine(ptr nonnull %1)
  call void @printLine(ptr @global_var_bb8d8)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_70a6f, label %dec_label_pc_70a6a

dec_label_pc_70a6a:                               ; preds = %dec_label_pc_70a5a
  call void @__stack_chk_fail()
  br label %dec_label_pc_70a6f

dec_label_pc_70a6f:                               ; preds = %dec_label_pc_70a6a, %dec_label_pc_70a5a
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

