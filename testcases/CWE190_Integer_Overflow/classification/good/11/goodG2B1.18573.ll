@global_var_8adbb = external constant [21 x i8]
@global_var_8c83e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5e0f1:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsFalse()
  %1 = icmp eq i32 %0, 0
  store i32 3, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_5e12a, label %dec_label_pc_5e112

dec_label_pc_5e112:                               ; preds = %dec_label_pc_5e0f1
  call void @printLine(ptr @global_var_8adbb)
  store i32 1, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_5e12a

dec_label_pc_5e12a:                               ; preds = %dec_label_pc_5e0f1, %dec_label_pc_5e112
  %2 = call i32 @globalReturnsTrue()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_5e14c, label %dec_label_pc_5e138

dec_label_pc_5e138:                               ; preds = %dec_label_pc_5e12a
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  call void @printUnsignedLine(i32 %stack_var_-16.0.reload)
  br label %dec_label_pc_5e14c

dec_label_pc_5e14c:                               ; preds = %dec_label_pc_5e138, %dec_label_pc_5e12a
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

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
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

