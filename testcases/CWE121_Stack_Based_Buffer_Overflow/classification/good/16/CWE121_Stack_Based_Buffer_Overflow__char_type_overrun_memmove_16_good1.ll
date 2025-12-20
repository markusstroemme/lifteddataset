@global_var_bbbf8 = external constant [32 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_728df:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @printLine(ptr @global_var_bbbf8)
  store i64 3978425819141910832, ptr %stack_var_-56, align 8
  %1 = bitcast ptr %stack_var_-56 to ptr
  call void @printLine(ptr nonnull %1)
  call void @printLine(ptr @global_var_bbbf8)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_7295f, label %dec_label_pc_7295a

dec_label_pc_7295a:                               ; preds = %dec_label_pc_728df
  call void @__stack_chk_fail()
  br label %dec_label_pc_7295f

dec_label_pc_7295f:                               ; preds = %dec_label_pc_7295a, %dec_label_pc_728df
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

declare i64 @__readfsqword(i64) local_unnamed_addr

