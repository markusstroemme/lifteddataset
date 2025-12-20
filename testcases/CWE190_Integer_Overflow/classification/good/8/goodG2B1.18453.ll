@global_var_8accb = external constant [21 x i8]
@global_var_8c83e = external constant [4 x i8]

define i32 @staticReturnsTrue.1841() local_unnamed_addr {
dec_label_pc_5d6bd:
  ret i32 1
}

define i32 @staticReturnsFalse.1842() local_unnamed_addr {
dec_label_pc_5d6cc:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_5d8ce:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsFalse.1842()
  %1 = icmp eq i32 %0, 0
  store i32 3, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_5d907, label %dec_label_pc_5d8ef

dec_label_pc_5d8ef:                               ; preds = %dec_label_pc_5d8ce
  call void @printLine(ptr @global_var_8accb)
  store i32 1, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_5d907

dec_label_pc_5d907:                               ; preds = %dec_label_pc_5d8ce, %dec_label_pc_5d8ef
  %2 = call i32 @staticReturnsTrue.1841()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_5d929, label %dec_label_pc_5d915

dec_label_pc_5d915:                               ; preds = %dec_label_pc_5d907
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  call void @printUnsignedLine(i32 %stack_var_-16.0.reload)
  br label %dec_label_pc_5d929

dec_label_pc_5d929:                               ; preds = %dec_label_pc_5d915, %dec_label_pc_5d907
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

