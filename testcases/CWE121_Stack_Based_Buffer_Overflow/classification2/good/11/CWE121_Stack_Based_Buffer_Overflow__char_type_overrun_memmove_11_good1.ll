@global_var_bbb10 = external constant [32 x i8]
@global_var_bbb30 = external constant [21 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_71f52:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_71f8c, label %dec_label_pc_71f7b

dec_label_pc_71f7b:                               ; preds = %dec_label_pc_71f52
  call void @printLine(ptr @global_var_bbb30)
  br label %dec_label_pc_71fdb

dec_label_pc_71f8c:                               ; preds = %dec_label_pc_71f52
  call void @printLine(ptr @global_var_bbb10)
  store i64 3978425819141910832, ptr %stack_var_-56, align 8
  %3 = bitcast ptr %stack_var_-56 to ptr
  call void @printLine(ptr nonnull %3)
  call void @printLine(ptr @global_var_bbb10)
  br label %dec_label_pc_71fdb

dec_label_pc_71fdb:                               ; preds = %dec_label_pc_71f8c, %dec_label_pc_71f7b
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_71ff0, label %dec_label_pc_71feb

dec_label_pc_71feb:                               ; preds = %dec_label_pc_71fdb
  call void @__stack_chk_fail()
  br label %dec_label_pc_71ff0

dec_label_pc_71ff0:                               ; preds = %dec_label_pc_71feb, %dec_label_pc_71fdb
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

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_a0bda:
  ret i32 0
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

