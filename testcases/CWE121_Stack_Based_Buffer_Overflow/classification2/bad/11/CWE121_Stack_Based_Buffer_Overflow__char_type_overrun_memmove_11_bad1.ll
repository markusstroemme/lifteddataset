@global_var_bbb10 = external constant [32 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_71ea4:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_71f3b, label %dec_label_pc_71ecd

dec_label_pc_71ecd:                               ; preds = %dec_label_pc_71ea4
  call void @printLine(ptr @global_var_bbb10)
  store i64 3978425819141910832, ptr %stack_var_-56, align 8
  %3 = bitcast ptr %stack_var_-56 to ptr
  call void @printLine(ptr nonnull %3)
  call void @printLine(ptr inttoptr (i64 3978425819141910832 to ptr))
  br label %dec_label_pc_71f3b

dec_label_pc_71f3b:                               ; preds = %dec_label_pc_71ecd, %dec_label_pc_71ea4
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_71f50, label %dec_label_pc_71f4b

dec_label_pc_71f4b:                               ; preds = %dec_label_pc_71f3b
  call void @__stack_chk_fail()
  br label %dec_label_pc_71f50

dec_label_pc_71f50:                               ; preds = %dec_label_pc_71f4b, %dec_label_pc_71f3b
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

declare i64 @__readfsqword(i64) local_unnamed_addr

