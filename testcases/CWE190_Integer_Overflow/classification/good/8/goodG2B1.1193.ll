@global_var_81120 = external constant [21 x i8]
@global_var_8c32c = external constant [4 x i8]

define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_b120:
  ret i32 1
}

define i32 @staticReturnsFalse() local_unnamed_addr {
dec_label_pc_b12f:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_b3c0:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsFalse()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_b3f9, label %dec_label_pc_b3e1

dec_label_pc_b3e1:                                ; preds = %dec_label_pc_b3c0
  call void @printLine(ptr @global_var_81120)
  store i32 0, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_b3f9

dec_label_pc_b3f9:                                ; preds = %dec_label_pc_b3c0, %dec_label_pc_b3e1
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  %2 = call i32 @staticReturnsTrue()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i32 %stack_var_-16.0.reload, 0
  %or.cond = or i1 %4, %3
  br i1 %or.cond, label %dec_label_pc_b41f, label %dec_label_pc_b40d

dec_label_pc_b40d:                                ; preds = %dec_label_pc_b3f9
  %5 = mul i32 %stack_var_-16.0.reload, 2
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_b41f

dec_label_pc_b41f:                                ; preds = %dec_label_pc_b40d, %dec_label_pc_b3f9
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

