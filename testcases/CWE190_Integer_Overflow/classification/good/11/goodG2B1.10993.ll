@global_var_8eba2 = external constant [21 x i8]
@global_var_9543c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3ea27:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsFalse()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_3ea60, label %dec_label_pc_3ea48

dec_label_pc_3ea48:                               ; preds = %dec_label_pc_3ea27
  call void @printLine(ptr @global_var_8eba2)
  store i32 0, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_3ea60

dec_label_pc_3ea60:                               ; preds = %dec_label_pc_3ea27, %dec_label_pc_3ea48
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  %2 = call i32 @globalReturnsTrue()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i32 %stack_var_-16.0.reload, 0
  %or.cond = or i1 %4, %3
  br i1 %or.cond, label %dec_label_pc_3ea86, label %dec_label_pc_3ea74

dec_label_pc_3ea74:                               ; preds = %dec_label_pc_3ea60
  %5 = mul i32 %stack_var_-16.0.reload, 2
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_3ea86

dec_label_pc_3ea86:                               ; preds = %dec_label_pc_3ea74, %dec_label_pc_3ea60
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_77a9b:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_77aaa:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

