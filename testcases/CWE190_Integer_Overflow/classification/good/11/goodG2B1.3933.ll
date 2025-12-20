@global_var_834cc = external constant [21 x i8]
@global_var_8c829 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_17524:
  %stack_var_-24.0.reg2mem = alloca i64, align 8
  %0 = call i32 @globalReturnsFalse()
  %1 = icmp eq i32 %0, 0
  store i64 3, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_1755f, label %dec_label_pc_17546

dec_label_pc_17546:                               ; preds = %dec_label_pc_17524
  call void @printLine(ptr @global_var_834cc)
  store i64 1, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_1755f

dec_label_pc_1755f:                               ; preds = %dec_label_pc_17524, %dec_label_pc_17546
  %2 = call i32 @globalReturnsTrue()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_17586, label %dec_label_pc_1756d

dec_label_pc_1756d:                               ; preds = %dec_label_pc_1755f
  %stack_var_-24.0.reload = load i64, ptr %stack_var_-24.0.reg2mem, align 8
  call void @printLongLongLine(i64 %stack_var_-24.0.reload)
  br label %dec_label_pc_17586

dec_label_pc_17586:                               ; preds = %dec_label_pc_1756d, %dec_label_pc_1755f
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6a65a:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_6a669:
  ret i32 0
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

