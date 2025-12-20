@global_var_bb808 = external constant [32 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_70287:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  call void @printLine(ptr @global_var_bb808)
  store i64 3978425819141910832, ptr %stack_var_-56, align 8
  %2 = bitcast ptr %stack_var_-56 to ptr
  call void @printLine(ptr nonnull %2)
  call void @printLine(ptr @global_var_bb808)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_70365, label %dec_label_pc_70360

dec_label_pc_70360:                               ; preds = %dec_label_pc_70287
  call void @__stack_chk_fail()
  br label %dec_label_pc_70365

dec_label_pc_70365:                               ; preds = %dec_label_pc_70360, %dec_label_pc_70287
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

declare i64 @__readfsqword(i64) local_unnamed_addr

