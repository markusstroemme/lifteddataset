@global_var_bb728 = external constant [32 x i8]

define i32 @staticReturnsTrue.1150() local_unnamed_addr {
dec_label_pc_6fa32:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_6fa50:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.1150()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_6fac7, label %dec_label_pc_6fa79

dec_label_pc_6fa79:                               ; preds = %dec_label_pc_6fa50
  call void @printLine(ptr @global_var_bb728)
  %3 = call ptr @memcpy(ptr nonnull %stack_var_-56, ptr @global_var_bb728, i32 32)
  %4 = bitcast ptr %stack_var_-56 to ptr
  call void @printLine(ptr nonnull %4)
  call void @printLine(ptr @global_var_bb728)
  br label %dec_label_pc_6fac7

dec_label_pc_6fac7:                               ; preds = %dec_label_pc_6fa79, %dec_label_pc_6fa50
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_6fadc, label %dec_label_pc_6fad7

dec_label_pc_6fad7:                               ; preds = %dec_label_pc_6fac7
  call void @__stack_chk_fail()
  br label %dec_label_pc_6fadc

dec_label_pc_6fadc:                               ; preds = %dec_label_pc_6fad7, %dec_label_pc_6fac7
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

